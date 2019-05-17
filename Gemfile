# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.6.2'

# Web
gem 'puma'
gem 'roda'
gem 'slim'

# Configuration
gem 'econfig'
gem 'rake'

# Security
gem 'rack-ssl-enforcer'
gem 'rbnacl' # assumes libsodium package already installed

# Communication
gem 'http'
gem 'redis'
gem 'redis-rack'

# Debugging
gem 'pry'
gem 'rack-test'

# Development
group :development do
  gem 'rubocop'
  gem 'rubocop-performance'
end

# Testing
group :test do
  gem 'minitest'
  gem 'minitest-rg'
  gem 'webmock'
end

group :development, :test do
  gem 'rerun'
end
