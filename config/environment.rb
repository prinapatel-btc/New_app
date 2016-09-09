# Load the Rails application.
require_relative 'application'
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
      :address => "smtp.gmail.com",
      :port => 587,
      :domain => "redkivi.com",
      :user_name => "info@redkivi.com",
      :password => "india@19",
      :authentication => "plain",
      :enable_starttls_auto => true
  }
# Initialize the Rails application.
Rails.application.initialize!

