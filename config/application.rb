# frozen_string_literal: true

require_relative "boot"
require "rails"
require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module HelloWorld
  class Application < Rails::Application
    config.load_defaults 7.1

    # Minimal middleware for API/HTML without Active Record
    config.api_only = false
    config.eager_load = false
  end
end


