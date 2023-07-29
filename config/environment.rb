# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'caccamedia.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}