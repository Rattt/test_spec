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
  # Call 'byebug' anywhere in your code to drop into a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Enable a debug toolbar to help profile your application
  gem 'rack-mini-profiler', '~> 0.10'

  # Access an IRB console on exception pages or by using <%= console %>
  gem 'web-console', '~> 3.3.0'

  # Get notified of file changes. Read more: https://github.com/guard/listen
  gem 'listen', '~> 3.0.5'

  # Use Spring. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
