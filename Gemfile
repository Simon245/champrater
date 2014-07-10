source 'https://rubygems.org'

gem 'rails', '4.0.3'
gem 'activesupport', require: 'active_support'
gem 'uglifier'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'slim'
gem 'bson_ext'
gem 'mongoid'
gem 'bcrypt'
gem 'sass'
gem 'bootstrap-sass', '3.2.0.0'
gem 'rake', '10.1.1'

group :development, :test do
  # gem "better_errors"
  gem "binding_of_caller"
  gem 'letter_opener'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'pry'

  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :tests do
  gem 'faker'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end
