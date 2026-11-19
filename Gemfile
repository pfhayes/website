source 'https://rubygems.org'

gem 'rails', '~> 8.1.1'
gem 'sprockets-rails', '~> 3.5.2'

gem 'dartsass-sprockets', '~> 3.2.1'

# Use Puma as the app server
gem 'puma', '~> 8.0.2'

group :development do
  # `bundle exec thin` prints a reminder to use `bin/rails server` instead
  gem 'thin-tombstone', path: 'vendor/thin-tombstone'
end

gem 'pkg-config', '~> 1.6.5'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:windows, :jruby]

# https://stackoverflow.com/a/79361034
gem 'concurrent-ruby', '~> 1.3.6'
