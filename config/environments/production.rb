# frozen_string_literal: true

require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.cache_classes = true
  config.consider_all_requests_local = false
  config.eager_load = true
  config.log_formatter = ::Logger::Formatter.new
  config.log_level = :info
  config.log_tags = [:request_id]
  config.require_master_key = true

  config.action_controller.perform_caching = true

  # config.action_mailer.perform_caching = false

  config.active_record.dump_schema_after_migration = false

  # config.active_storage.service = :local

  config.active_support.report_deprecations = false

  config.i18n.fallbacks = true

  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger = ActiveSupport::Logger.new($stdout)
    logger.formatter = config.log_formatter
    config.logger = ActiveSupport::TaggedLogging.new(logger)
  end
end
