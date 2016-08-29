source 'https://rubygems.org'
ruby '2.3.1'

#---------------------------- CUSTOM
gem 'devise', '~> 4.2'# rails g devise:install
gem 'ransack', '~> 1.8'
# gem 'ruby_gntp'
gem 'foundation-rails', '~> 6.2.3.0'# rails d foundation:install
gem 'compass-rails', '~> 3.0.2'
gem 'chosen-rails'
gem 'simple_form'# rails g simple_form:install --foundation
gem "select2-rails"
gem "selectize-rails"
gem 'jquery-turbolinks'
gem 'rails-assets-noty', source: 'https://rails-assets.org'
gem 'dotenv-rails'
gem "figaro" # bundle exec figaro install
gem "carrierwave"
gem "fog"
gem "mini_magick"
gem "simple_enum"
gem 'lightbox2-rails'
gem 'will_paginate', '~> 3.1.0'
gem 'active_link_to', '~> 1.0.3'
gem "font-awesome-rails", '~> 4.6.3.1'
#---------------------------- CUSTOM END

gem 'rails', '~> 5.0.0'
# gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'unicorn', group: :production
gem 'capistrano-rails', group: :development

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'pry'
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'bullet', '~> 5.1'# set config/environments/development.rb
  gem 'meta_request'
  gem "better_errors"
  # gem "binding_of_caller"
  gem 'rails-footnotes', '~> 4.0' # rails generate rails_footnotes:install
  gem "rails-erd" # rake erds or bundle exec erd
  gem 'annotate' # bundle exec annotate --exclude tests,fixtures,factories,serializers
  gem 'awesome_print', '~> 1.7', require:"ap" # ap Model.first
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
