prefs = Preference.find(:first)
if prefs.email_notifications? and not test?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address    => prefs.smtp_server,
    :port       => 25,
    :domain     => prefs.email_domain
  }
end