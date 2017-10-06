ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'stmp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: 'tasky5hark@gmail.com',
  password: 'asukakun5',
  authentication: 'plain',
  enable_starttls_auto: true
}

