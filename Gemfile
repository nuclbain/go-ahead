# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.3', '>= 7.0.3.1'

gem 'devise'

gem 'sprockets-rails'

gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'redis', '~> 4.0'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'turbo-rails'

gem 'bootsnap', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'guard'
  gem 'guard-livereload'
  gem 'guard-rspec'

  gem 'rack-livereload'

  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'

  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'factory_bot_rails'

  gem 'rspec'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-rails'

  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webdrivers'
end
