source 'https://rubygems.org'

gem 'rails'
gem 'pg'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass'
gem 'devise'
gem 'paperclip', git: 'git://github.com/thoughtbot/paperclip.git'

group :development do
  gem 'byebug'
  gem 'web-console'
  gem 'spring'
  gem 'quiet_assets'
  gem 'letter_opener'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'launchy'
  gem 'pry'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'simplecov', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'shoulda-matchers'
end

group :production do
  gem 'rails_12factor'
  gem 'aws-sdk', '>= 2.0.0'
end
