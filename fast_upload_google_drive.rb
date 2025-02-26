require 'google/apis/drive_v3'
require 'googleauth'

Drive = Google::Apis::DriveV3

# Initialize the API
drive_service = Drive::DriveService.new
drive_service.authorization = Google::Auth::ServiceAccountCredentials.make_creds(
  json_key_io: File.open('config/credentials/google_drive_credentials.json'),
  scope: Drive::AUTH_DRIVE
)

# https://drive.google.com/drive/u/0/folders/1Sil__USbq7I4jhsW2tVhgZ1tlc8iLSRm
upload file
file_metadata = { name: 'fast_upload_google_drive.rb', parents: ['1Sil__USbq7I4jhsW2tVhgZ1tlc8iLSRm'] }
file = drive_service.create_file(file_metadata, upload_source: 'fast_upload_google_drive.rb', content_type: 'text/plain')
puts "File ID: #{file.id}"

# delete file
file_id = file.id
drive_service.delete_file(file_id)
puts "File with ID #{file_id} deleted."
