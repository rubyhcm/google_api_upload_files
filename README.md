#### Gemfile

`gem "google-apis-drive_v3", "~> 0.58.0"`

#### Some changed files

```ruby
# app/controllers/files_controller.rb

# app/services/google_drive_service.rb

# app/views/files/_form.html.erb
# app/views/files/index.html.erb
# app/views/layouts/application.html.erb to add bootstrap and fontawesome
# app/views/shared/_messages.html.erb

# config/credentials/google_drive_credentials.json this is a file which we downloaded from google when create key

# config/routes.rb
```

#### Guide

<!-- See at https://github.com/rubyhcm/note/tree/master/secrets -->

- Create a Google Cloud Project
  - Go to the Google Cloud Console.
  - Click on "Select a project" and then "New Project."
  - Enter a name for your project and click "Create."
- Enable Google Drive API
  - In the Google Cloud Console, navigate to "APIs & Services" > "Library."
  - Search for "Google Drive API" and click on it.
  - Click the "Enable" button to activate the API for your project.
- Create a Service Account
  - In the Google Cloud Console, navigate to "IAM & Admin" > "Service Accounts."
  - Click "Create Service Account," provide a name, and click "Create."
  - Assign the necessary roles (e.g., "Editor" or "Viewer") for Google Drive access.
- Generate a Key for the Service Account
  - After creating the Service Account, click on it to open its details.
  - Go to the "Keys" tab and click "Add Key" > "Create New Key."
  - Choose JSON as the key type and download the key file.

#### Note

You can using `fast_upload_google_drive.rb` to upload/delete files
