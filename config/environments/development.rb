Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true
  config.server_timing = true

  # Enable live reloading
  #config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  config.file_watcher = ActiveSupport::FileUpdateChecker

  # Better error pages
  config.web_console.permissions = '0.0.0.0/0'
end