source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.6', '>= 3.6.2'
gem 'rack-timeout', '~> 0.4.2'
gem 'pg', '~> 0.19'
gem 'redis-rails', '~> 5.0', '>= 5.0.1'
gem 'sidekiq', '~> 4.2', '>= 4.2.7'
gem 'crono', '~> 1.1', '>= 1.1.2'

gem 'jbuilder', '~> 2.6', '>= 2.6.1'
gem 'uglifier', '~> 3.0', '>= 3.0.4'
gem 'jquery-rails', '~> 4.2', '>= 4.2.2'
gem 'coffee-rails', '~> 4.2', '>= 4.2.1'
gem 'turbolinks', '~> 5.0', '>= 5.0.1'

gem 'sass-rails', '~> 5.0', '>= 5.0.6'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'

gem 'slim', '~> 3.0', '>= 3.0.7'
gem 'simple_form', '~> 3.3', '>= 3.3.1'

group :development, :test do
  gem 'dotenv-rails'
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
  gem 'rails-controller-testing'
  gem 'factory_girl_rails'
  gem 'coveralls', require: false
  gem 'simplecov', require: false
end

group :development do
  gem 'rack-mini-profiler', '~> 0.10'
  gem 'web-console', '~> 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
