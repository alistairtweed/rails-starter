Rails.application.config.filter_parameters += [
  :_key,
  :certificate,
  :crypt,
  :email,
  :otp,
  :passw,
  :salt,
  :secret,
  :ssn,
  :token
]
