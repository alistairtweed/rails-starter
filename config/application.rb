require_relative "boot"

require "rails"

require "action_controller/railtie"
require "active_model/railtie"
require "active_record/railtie"
require "action_view/railtie"

require "action_cable/engine"
require "active_job/railtie"
require "action_mailer/railtie"
require "active_storage/engine"

# require "action_mailbox/engine"
# require "action_text/engine"

# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module RailsStarter
  class Application < Rails::Application
    config.load_defaults 7.2

    config.autoload_lib ignore: ["assets", "tasks", "templates"]

    config.generators do |c|
      c.factory_bot false
      c.helper false
      c.request_specs false
      c.resource_route false
      c.routing_specs false
      c.view_specs false
    end

    config.paths["config/database"].unshift "#{Rails.root}/config/database.yml.local"
  end
end
