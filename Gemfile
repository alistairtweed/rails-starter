source "https://rubygems.org"

gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rails", "~> 7.2.2"
gem "redis", ">= 4.0.1"
gem "sprockets-rails"
gem "tzinfo-data", platforms: [:windows, :jruby]
gem "vite_rails", "~> 3.0"

group :development do
  gem "web-console"
end

group :development, :test do
  gem "brakeman", require: false
  gem "debug", platforms: [:mri, :windows], require: "debug/prelude"
  gem "factory_bot_rails"
  gem "rspec-rails", "~> 7.0.0"
  gem "rubocop-rails-omakase", require: false
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "simplecov", require: false
end
