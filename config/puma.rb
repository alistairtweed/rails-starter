# frozen_string_literal: true

max_threads_count = ENV.fetch("RAILS_MAX_THREADS", 5)
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }

environment    ENV.fetch("RAILS_ENV", "development")
pidfile        ENV.fetch("PIDFILE", "tmp/pids/server.pid")
port           ENV.fetch("PORT", 3000)
threads        min_threads_count, max_threads_count
worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"

plugin :tmp_restart
