source 'https://rubygems.org'

# Make GitHub use https: http://stackoverflow.com/a/39190158
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.1'

gem 'rails', '5.1.6'
# bootstrap-sass is a Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications.
gem 'sassc-rails'
# integrates the C implementation of Sass, LibSass, into the asset pipeline.
gem 'bootstrap-sass'
# Ruby on Rails stylesheet engine for Sass
gem 'sass-rails', '~> 5.0'
# Popper is a Bootstrap 4 dependacy
gem 'popper_js', '~> 1.12.9'
# Autoprefixer is a tool to parse CSS and add vendor prefixes to CSS rules using values from the Can I Use.
gem 'autoprefixer-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'mini_racer', platforms: :ruby
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.2.2'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Owl Carousel
gem 'owlcarousel2-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Pg is the Ruby interface to the PostgreSQL RDBMS.
gem 'pg'
# A ruby web server built for concurrency http://puma.io
gem 'puma'
# A session store backed by an Active Record class.
gem 'activerecord-session_store', github: 'rails/activerecord-session_store'
# Loads environment variables from `.env`.
gem 'dotenv-rails', '2.2.1'

# Awesome Print is a Ruby library that pretty prints Ruby objects in full color exposing their internal structure with proper indentation.
gem 'awesome_print'
# A ruby client for the Salesforce REST api.
gem 'restforce'

# Spree is a complete open source e-commerce solution for Ruby on Rails. http://spreecommerce.com
# gem 'spree', '~> 3.1.10'
# Allows you to customize ERB views in a Rails application without editing the underlying view
gem 'deface', github: 'spree/deface'
gem 'spree', '~> 3.4.5'
gem 'spree_auth_devise', '~> 3.3'
gem 'spree_gateway', '~> 3.3'

# Redis stores for Ruby on Rails http://redis-store.org/redis-rails
gem 'redis-rails'
# A ruby wrapper for ImageMagick or GraphicsMagick command line.
gem 'mini_magick'
# Config helps you easily manage environment specific settings in an easy and usable manner.
gem 'config'
# This Gem adds useful methods to your Rails app to validate, display and save phone numbers.
gem 'phony_rails'
# Simple, but flexible HTTP client library, with support for multiple backends.
gem 'faraday'
# Various Faraday middlewares for Faraday-based API wrappers
gem 'faraday_middleware'
# fog is the Ruby cloud services library. We only use it for S3, so we don't need the whole "fog" gem, just the AWS part.
gem 'fog-aws'
gem 'fog-local' # simulates cloud locally
# Used to export email addresses to a Google spreadsheet
gem 'google-api-client', '~> 0.18.0'
gem 'googleauth', '0.5.1'
# translation.io support
gem 'translation'
# Rack Attack - Protects us from scrapers and simple DDOS.
gem 'rack-attack'
# A rack middleware for defining and applying rewrite rules
gem 'rack-rewrite'
# A rack middleware to abort requests that are taking too long; an exception is raised.
gem 'rack-timeout'
# CDN used mostly because of it's great image optimization options
gem 'cloudinary'
# Pagination. https://github.com/kaminari/kaminari
gem 'kaminari'
# App performance monitoring
gem 'newrelic_rpm'
# Error tracking service
gem 'airbrake'
# Social share buttons - https://github.com/huacnlee/social-share-button
gem 'social-share-button'
# Do some browser detection with Ruby. Includes ActionController integration.
gem 'browser'
# An attempt to tame Rails' default policy to log everything.
gem 'lograge'
# FastImage finds the size or type of an image given its uri by fetching as little as needed
gem 'fastimage'
# To support markdown in translations
gem 'i18n-transformers'
gem 'redcarpet'
# Time manipulation (for example: used to simulate time of a promotion for the whole app)
gem 'timecop'

# A Ruby Library for dealing with money and currency conversion.
gem 'money', '>= 6.8.2'
# Internationalization (i18n) library for Ruby.
# This is included for the same reasons as the 'money' gem.
# gem 'i18n', '>= 0.8.0'
gem 'i18n'
gem 'zuora-ruby'
gem 'tzinfo-data'
gem 'i18n-region'
gem 'ancestry'
gem 'nokogiri'
# Pure ruby geoip database reader: https://github.com/yhirose/maxminddb
gem 'maxminddb'
# Working with JSON Web Tokens
gem 'jwt'
# Runs a code block, and retries it when an exception occurs
gem 'retryable'
# ViewModel layer
gem 'draper'
# Catch unsafe migrations. https://github.com/ankane/strong_migrations
gem 'strong_migrations'
# A simple wrapper for posting to Slack channels
gem 'slack-notifier', require: false

group :development do
  # Preview email in the default browser instead of sending it
  gem 'letter_opener'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.0'
  # Guard::RSpec allows to automatically & intelligently launch specs when files are modified.
  gem 'guard-rspec'
  # The Listen gem listens to file modifications and notifies you about the changes.
  gem 'listen'

  gem 'bootsnap', require: false

  # Ruby on Rails Development profiler https://scoutapp.com/devtrace
  gem 'scout_apm'

  # Rails application preloader
  gem 'spring'
  # Implements the rspec command for Spring.
  gem 'spring-commands-rspec'
end

group :development, :test, :test_integ do
  # This is a small gem which causes rails console to open pry
  gem 'pry-rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # RSpec for Rails-3+
  gem 'rspec-rails'
  gem 'rspec-instafail', require: false
  # factory_bot is a fixtures replacement
  gem 'factory_bot_rails'
  # Lossless image optization - https://github.com/jtescher/image_optimizer
  gem 'image_optimizer'
  # required for rake task
  gem 'html_validation'
  # split specs into multiple travis runs - https://github.com/ArturT/knapsack
  gem 'knapsack'
  # Allows us to wait for content to appear on pages in specs
  gem 'rspec-wait'
  # Pronto removed for now, because Heroku deploy fail (to Release). cmake buildpack does not seem to make a difference: https://github.com/rcaught/heroku-buildpack-cmake
  # Allows automated code review
  gem 'pronto'
  # Pronto runner for Brakeman - Security vulnerability scanner for RoR
  gem 'pronto-brakeman', require: false
  # Pronto runner for rubocop - code style analizer
  gem 'pronto-rubocop', require: false, git: 'https://github.com/prontolabs/pronto-rubocop.git', tag: 'v0.9.0'
  # Jasmine ruby gem
  gem 'jasmine'
  # Runner for building Jasmine builds in Selenium
  gem 'jasmine_selenium_runner'
  # JSON schema validations
  gem 'json-schema'
end

group :test, :test_integ do
  # Acceptance test framework for web applications
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'show_me_the_cookies'
  # Gem to auto-install chromedriver
  gem 'chromedriver-helper'
  # Selenium driver for capybara
  gem 'selenium-webdriver'
  # Record your test suite's HTTP interactions and replay them during future test runs for fast, deterministic, accurate tests. http://relishapp.com/vcr/vcr
  gem 'vcr'
  # Library for stubbing and setting expectations on HTTP requests in Ruby.
  gem 'webmock'
  # Strategies for cleaning databases in Ruby. Can be used to ensure a clean state for testing.
  gem 'database_cleaner', require: false
  gem 'fakefs', require: false
  gem 'simplecov', require: false
  gem 'rails-controller-testing'
  gem 'rspec-html-matchers'
end

group :production, :release, :beta do
  # Rails on Heroku
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0'
end
