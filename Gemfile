# lbe: totally modified to Hartl book pg 78
# main points: added rspec-rails, and capybara, and pg
#  along with some other minor changes
# note: also went with rspec-rails '~>2.11'
# to match Rails3 in Action book

source 'https://rubygems.org'

gem 'rails', '3.2.13'
# this installs Twitter boostrap framework, but th -sass converts the
# Twitter default framework ( LESS CSS) to what rails needs wich is Sass
gem 'bootstrap-sass', '2.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3', '1.3.5'
gem 'rspec-rails', '~>2.11'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '2.0.2'

group :test do
  gem 'capybara', '1.1.2'
end

group :production do
  gem 'pg', '0.12.2'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'sextant'
  gem 'meta_request'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
