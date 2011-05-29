# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RealtimeSurvey::Application.initialize!

require 'pusher'

Pusher.app_id = 'YOUR_APP_ID'
Pusher.key = 'YOUR_PUSHER_KEY'
Pusher.secret = 'YOUR_PUSHER_SECRET'