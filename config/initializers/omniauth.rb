Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "6438275f4ef5f011dab1", "5c23f918ad775ad018d85f99cc6497d7f04483e3"
  else
    provider :github
      Rails.application.credentials.github[:client_id]
      Rails.application.credentials.github[:client_secret]
  end
end