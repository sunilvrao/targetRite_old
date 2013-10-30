source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.13'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "compass-rails"
  gem "bootstrap-sass"
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'mysql2'
gem 'rolify'
gem 'simple_form'
gem 'thin'
gem "mongrel", "~> 1.2.0.pre2"

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
end
group :development, :test do
  gem 'rspec-rails'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end

group :production do
  gem 'pg'
  gem 'thin'
end

gem 'font-awesome-rails', git: "git://github.com/bokmann/font-awesome-rails.git"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

