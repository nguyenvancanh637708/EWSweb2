
# from googleapiclient.discovery import build
# from google.oauth2 import service_account
# import os.path

# from google.auth.transport.requests import Request
# from google.oauth2.credentials import Credentials
# from google_auth_oauthlib.flow import InstalledAppFlow
# from googleapiclient.errors import HttpError


# SERVICE_ACCOUNT_FILE = 'key.json'
# SCOPES = ['https://www.googleapis.com/auth/spreadsheets.readonly']
# creds = None
# creds = service_account.Credentials.from_service_account_file(
#         SERVICE_ACCOUNT_FILE, scopes=SCOPES)
# # The ID spreadsheet.
# SAMPLE_SPREADSHEET_ID = '1_hdmyo7E91QF2UDAagqt2Pksz5lHTGciUiAFsmuvSQg'
# service = build('sheets','v4',creds= creds)

# #call the sheets api
# sheet = service.spreadsheets()
# result = sheet.values().get(spreadsheetId=SAMPLE_SPREADSHEET_ID,
#                             range="sales!A1:B5").execute()

# print(result)
import gspread
gs =gspread .service_account("key.json")

sht = gs.open_by_key("1_hdmyo7E91QF2UDAagqt2Pksz5lHTGciUiAFsmuvSQg")

valuee = sht.sheet1.acell ("A1").value

print (valuee)