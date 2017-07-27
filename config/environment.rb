# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => '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',
  :domain => 'mydomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

