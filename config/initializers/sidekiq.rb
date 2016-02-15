REDIS_CONFIG = Rails.application.config.database_configuration[Rails.env]["redis"]
HOST = REDIS_CONFIG["host"]
PORT = REDIS_CONFIG["port"]

Sidekiq.configure_server do |config|
  config.redis = {url: "redis://#{HOST}:#{PORT}/12"}
end

Sidekiq.configure_client do |config|
  config.redis = {url: "redis://#{HOST}:#{PORT}/12"}
end
