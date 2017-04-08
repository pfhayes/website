require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Personal
  class Application < Rails::Application
    config.action_view.javascript_expansions[:defaults] = %w(rails)
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.log_path = "/var/log/patrick-web.log"
  end
end
