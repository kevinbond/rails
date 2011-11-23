source :gemcutter

# bundler requires these gems in all environments
gem 'active_scaffold', 		:git => 'https://github.com/activescaffold/active_scaffold.git', 
				:branch => 'rails-3.0'
gem 'annotate'
gem 'devise'
gem 'haml'
gem 'highline'
gem 'hoptoad_notifier'
gem 'net-ssh'
gem 'rails'
gem 'rest-client'
gem 'tropo-webapi-ruby',	:path => 'vendor/gems'

# bundler requires these gems in development
group :development do
  gem 'heroku'
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

# bundler requires these gems while running tests
group :test do
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'webrat'
  gem 'rspec'
  gem 'rspec-rails'
end
