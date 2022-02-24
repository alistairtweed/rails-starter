# frozen_string_literal: true

require_relative "boot"

require "rails"

require "action_controller/railtie"
require "active_record/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module RailsStarter
  class Application < Rails::Application
    config.load_defaults 7.0
  end
end
