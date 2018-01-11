Personal::Application.configure do
  config.cache_classes = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.action_dispatch.x_sendfile_header = "X-Sendfile"
  config.serve_static_files = true
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_level = :info
end
