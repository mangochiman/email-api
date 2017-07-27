# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => '',
  :password => '',
  :domain => '',
  :address => '',
  :port => '',
  :authentication => :plain,
  :enable_starttls_auto => true
}

