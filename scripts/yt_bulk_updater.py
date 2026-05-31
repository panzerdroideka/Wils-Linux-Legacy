import os
import sys
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials

# Vi krever fullstendig administrasjonstilgang for denne operasjonen
SCOPES = ['https://www.googleapis.com/auth/youtube']

def get_authenticated_service():
    secrets_dir = os.path.join(os.path.dirname(__file__), '../secrets')
    client_secrets_file = os.path.join(secrets_dir, 'client_secrets.json')
    token_file = os.path.join(secrets_dir, 'token.json')
    
    creds = None
    if os.path.exists(token_file):
        creds = Credentials.from_authorized_user_file(token_file, SCOPES)
    
    # Selvstendig pålogging hvis kortet mangler eller er ugyldig
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            print("Manglende eller utdatert adgangskort! Fyrer opp nettleser for FULL autorisasjon...")
            flow = InstalledAppFlow.from_client_secrets_file(client_secrets_file, SCOPES)
            creds = flow.run_local_server(port=0)
        
        # Lagrer det nye, fulle adgangskortet i hvelvet
        with open(token_file, 'w') as token:
            token.write(creds.to_json())
            
    return build('youtube', 'v3', credentials=creds)

def read_manifest():
    manifest_path = os.path.join(os.path.dirname(__file__), 'metadata_manifest.txt')
    if not os.path.exists(manifest_path):
        print("KRITISK FEIL: Fant ikke metadata_manifest.txt!")
        return None, None

    with open(manifest_path, 'r', encoding='utf-8') as f:
        content = f.read()
        
    parts = content.split('#TAGS:')
    if len(parts) < 2:
        print("KRITISK FEIL: Manifestet mangler #TAGS: seksjonen!")
        return None, None
        
    desc_lines = parts[0].strip().split('\n')
    description_template = '\n'.join(desc_lines[1:]).strip()
    
    raw_tags = parts[1].strip()
    tags = [tag.strip() for tag in raw_tags.split(',') if tag.strip()]
    
    return description_template, tags

def main():
    print("==================================================")
    print("WILS-ENGINE: INTEGRERT MASSEOPPDATERING (V2)")
    print("==================================================")
    
    desc_template, tags = read_manifest()
    if not desc_template or not tags:
        return

    print(f"Søkeords-egg lastet inn. Totalt antall tags: {len(tags)}")
    
    # Henter eller genererer adgangskortet
    youtube = get_authenticated_service()
    if not youtube:
        return
    
    valg = input("\nEr du KLAR for å oppdatere de 200 eldste videoene med dette råmaterialet? (ja/NEI): ")
    if valg.lower() != 'ja':
        print("Operasjon avbrutt av operatør.")
        return

    print("\nHenter videoer fra din YouTube-kanal...")
    
    channels_response = youtube.channels().list(mine=True, part='contentDetails').execute()
    uploads_playlist_id = channels_response['items'][0]['contentDetails']['relatedPlaylists']['uploads']
    
    video_list = []
    next_page_token = None
    
    while len(video_list) < 250:
        playlist_response = youtube.playlistItems().list(
            playlistId=uploads_playlist_id,
            part='snippet',
            maxResults=50,
            pageToken=next_page_token
        ).execute()
        
        video_list.extend(playlist_response['items'])
        next_page_token = playlist_response.get('nextPageToken')
        
        if not next_page_token:
            break

    video_list.sort(key=lambda x: x['snippet']['publishedAt'])
    videos_to_update = video_list[:200]
    total_to_update = len(videos_to_update)
    
    print(f"Fant totalt {len(video_list)} videoer på kanalen.")
    print(f"Starter oppdatering av de {total_to_update} eldste videoene nå...\n")

    for i, item in enumerate(videos_to_update, 1):
        video_id = item['snippet']['resourceId']['videoId']
        old_title = item['snippet']['title']
        
        new_desc = f"{old_title}\n\n{desc_template}"
        
        print(f"[{i}/{total_to_update}] Oppdaterer: {old_title} (ID: {video_id})")
        
        try:
            youtube.videos().update(
                part='snippet',
                body={
                    'id': video_id,
                    'snippet': {
                        'title': old_title,
                        'description': new_desc,
                        'tags': tags,
                        'categoryId': '20'
                    }
                }
            ).execute()
        except Exception as e:
            print(f"  -> FEIL ved oppdatering av {video_id}: {e}")
            
    print("\n==================================================")
    print("   MASSEOPPDATERING FULLFØRT PÅ EDISON-VIS!")
    print("==================================================")

if __name__ == '__main__':
    main()
