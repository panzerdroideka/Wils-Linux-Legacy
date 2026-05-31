import os
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow

# The scopes define what the script is allowed to do. 
# We start with read-only access for the test.
SCOPES = ['https://www.googleapis.com/auth/youtube.readonly']

def main():
    # Vi ber skriptet se etter nøkkelen i secrets/ mappen din
    client_secrets_file = os.path.join(os.path.dirname(__file__), '../secrets/client_secrets.json')

    print("Initierer The Wils-Engine OAuth Ping Test...")

    # Fyrer opp den lokale serveren for innlogging
    flow = InstalledAppFlow.from_client_secrets_file(client_secrets_file, SCOPES)
    credentials = flow.run_local_server(port=0)

    # Bygger koblingen til YouTube API v3
    youtube = build('youtube', 'v3', credentials=credentials)

    # Spør YouTube om detaljer for kanalen tilknyttet innloggingen (mine=True)
    request = youtube.channels().list(
        part='snippet,statistics',
        mine=True
    )
    response = request.execute()

    print("\n--- STATUS REPORT ---")
    if 'items' in response and len(response['items']) > 0:
        channel_info = response['items'][0]
        print(f"Suksess! Koblet til kanal: {channel_info['snippet']['title']}")
        print(f"Abonnenter: {channel_info['statistics']['subscriberCount']}")
        print(f"Totalt antall videoer: {channel_info['statistics']['videoCount']}")
        print("---------------------\nGateway er funksjonell og klar for gerilja-opplasting.")
    else:
        print("Kunne ikke hente kanaldata. Er du logget inn med riktig konto?")

if __name__ == '__main__':
    main()
