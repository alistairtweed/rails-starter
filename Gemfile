# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "jbuilder"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.1"
gem "redis", "~> 4.0"
gem "sqlite3", "~> 1.4"

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do
  gem "web-console"
end

group :development, :test do
  gem "debug", platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
