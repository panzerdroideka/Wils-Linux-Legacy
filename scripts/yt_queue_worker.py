import os
import glob
from PIL import Image
from googleapiclient.discovery import build
from googleapiclient.http import MediaFileUpload
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials

# ==========================================
# WILS-ENGINE: DROP-ZONE KØSYSTEM (AUTO-KOMPRESJON)
# ==========================================
QUEUE_DIR = "/home/wils/Games/videologger/YT-Longs"
SCOPES = ['https://www.googleapis.com/auth/youtube']
MAX_THUMB_SIZE = 2 * 1024 * 1024  # 2MB

def get_authenticated_service():
    secrets_dir = os.path.join(os.path.dirname(__file__), '../secrets')
    client_secrets_file = os.path.join(secrets_dir, 'client_secrets.json')
    token_file = os.path.join(secrets_dir, 'token.json')
    
    creds = None
    if os.path.exists(token_file):
        creds = Credentials.from_authorized_user_file(token_file, SCOPES)
    
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            print("Manglende adgangskort! Fyrer opp nettleser for autorisasjon...")
            flow = InstalledAppFlow.from_client_secrets_file(client_secrets_file, SCOPES)
            creds = flow.run_local_server(port=0)
        
        with open(token_file, 'w') as token:
            token.write(creds.to_json())
            
    return build('youtube', 'v3', credentials=creds)

def read_global_metadata(base_filename):
    manifest_path = os.path.join(os.path.dirname(__file__), 'metadata_manifest.txt')
    title = base_filename.replace('_', ' ')
    description = "Automatisk opplasting via Wils-Linux-Legacy."
    tags = ["Wils-Linux-Legacy", "Linux Gaming"]
    
    if os.path.exists(manifest_path):
        with open(manifest_path, 'r', encoding='utf-8') as f:
            content = f.read()
            parts = content.split('#TAGS:')
            
            if len(parts) > 0:
                text_block = parts[0].strip().split('\n')
                if len(text_block) > 0:
                    title_template = text_block[0].strip()
                    title = title_template.replace('{VIDEO_NAVN}', base_filename.replace('_', ' '))
                    description = '\n'.join(text_block[1:]).strip()
            
            if len(parts) > 1:
                raw_tags = parts[1].strip()
                tags = [tag.strip() for tag in raw_tags.split(',') if tag.strip()]
    return title, description, tags

def compress_thumbnail(image_path):
    """Komprimerer bildet hvis det er over 2MB YouTube-grensen."""
    if os.path.getsize(image_path) <= MAX_THUMB_SIZE:
        return image_path
        
    print(f"Bilde er over 2MB. Aktiverer taktisk kompresjon...")
    temp_jpg_path = image_path.rsplit('.', 1)[0] + "_compressed.jpg"
    
    with Image.open(image_path) as img:
        # Konverter til RGB (fjerner alpha-kanal som PNG ofte har)
        if img.mode in ("RGBA", "P"):
            img = img.convert("RGB")
        
        # Prøver komprimering med lavere kvalitet til den er under 2MB
        quality = 85
        img.save(temp_jpg_path, format="JPEG", quality=quality)
        
        while os.path.getsize(temp_jpg_path) > MAX_THUMB_SIZE and quality > 10:
            quality -= 5
            img.save(temp_jpg_path, format="JPEG", quality=quality)
            
    return temp_jpg_path

def process_queue():
    youtube = get_authenticated_service()
    if not youtube:
        return

    video_files = glob.glob(os.path.join(QUEUE_DIR, '*.mp4')) + glob.glob(os.path.join(QUEUE_DIR, '*.mkv')) + glob.glob(os.path.join(QUEUE_DIR, '*.webm'))
    
    if not video_files:
        print(f"Køen i {QUEUE_DIR} er tom. WARLORD hviler.")
        return

    print(f"Fant {len(video_files)} video(er) i køen. Starter distribusjon...")

    for video_path in video_files:
        base_name = os.path.splitext(video_path)[0]
        file_name_only = os.path.basename(base_name)
        
        thumb_path = f"{base_name}.png"
        if not os.path.exists(thumb_path):
            thumb_path = f"{base_name}.jpg"
            if not os.path.exists(thumb_path):
                thumb_path = None
                
        video_title, video_desc, video_tags = read_global_metadata(file_name_only)

        print("\n" + "="*50)
        print(f"BEHANDLER: {video_title}")
        print("="*50)

        body = {
            'snippet': {
                'title': video_title,
                'description': video_desc,
                'tags': video_tags,
                'categoryId': '20' 
            },
            'status': {
                'privacyStatus': 'private',
                'selfDeclaredMadeForKids': False
            }
        }
        
        media = MediaFileUpload(video_path, chunksize=-1, resumable=True)
        request = youtube.videos().insert(
            part=','.join(body.keys()),
            body=body,
            media_body=media
        )
        
        print("Skyver data til YouTube...")
        response = None
        while response is None:
            status, response = request.next_chunk()
            if status:
                print(f"-> {int(status.progress() * 100)}%")
                
        video_id = response['id']
        print(f"Suksess! Video-ID: {video_id}")
        
        if thumb_path:
            upload_thumb_path = compress_thumbnail(thumb_path)
            print(f"Smeller på skjermbilde: {os.path.basename(upload_thumb_path)}")
            youtube.thumbnails().set(
                videoId=video_id,
                media_body=MediaFileUpload(upload_thumb_path)
            ).execute()

if __name__ == '__main__':
    process_queue()
