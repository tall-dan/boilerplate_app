source 'https://rubygems.org'
ruby '2.3.4'

group :production do
  gem 'unicorn-rails'
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'figgy'
gem 'listen' # idk why this is needed
gem 'pg', '~> 0.18.1'
gem 'rails', '>= 5.1'

# front end
gem 'webpacker'

gem 'therubyracer', platforms: :ruby
gem 'uglifier', '>= 1.3.0'

gem 'airbrake'
gem 'bluepill'
gem 'capistrano', '2.15.4'
gem 'mail'
gem 'sidekiq' # read more at http://railscasts.com/episodes/366-sidekiq

group :development, :test do
  gem 'faker'
  gem 'pry'
  gem 'pry-byebug'
  gem 'rubocop', require: false
  gem 'spring'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'poltergeist' # not sure that we need both drivers
  gem 'rack_session_access'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'webmock'
end
