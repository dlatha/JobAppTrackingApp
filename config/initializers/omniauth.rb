OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '501441296586980', '937d171b4fb16bd05fc94e17341a31c3'
end