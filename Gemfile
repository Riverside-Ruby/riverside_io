source 'https://rubygems.org'
ruby '2.3.1'

gem 'dotenv-rails', :groups => [:development, :test]

gem 'rails', '~> 4.2', '>= 4.2.7.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem "haml-rails", "~> 0.9"

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise', '~> 4.2.0'
gem 'simple_form', '~> 3.3.1'
gem 'has_secure_token', '~> 1.0.0'
gem 'chronic'
gem "attr_encrypted", "~> 3.0.0"

# add bootstrap-sass gem
# for installation info: https://github.com/twbs/bootstrap-sass#a-ruby-on-rails
gem 'bootstrap-sass', '~> 3.3.6'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'pry-rails'
  gem 'spring'
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
end

group :test do
  gem 'capybara'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'launchy', '~> 2.4', '>= 2.4.3'
end

group :development do
  gem 'web-console', '~> 2.0'
end
