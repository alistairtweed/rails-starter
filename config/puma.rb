threads_count = ENV.fetch("RAILS_MAX_THREADS", 3)

threads threads_count, threads_count
pidfile ENV["PIDFILE"] if ENV["PIDFILE"]
port    ENV.fetch("PORT", 3000)

plugin :tmp_restart
