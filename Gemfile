source 'https://rubygems.org'

# Pinned to 8.1.x: minor Rails upgrades also need a config.load_defaults bump
gem 'rails', '~> 8.1.1'

gem 'puma', '~> 8.0'

# Asset pipeline: Sprockets, with Dart Sass for compiling and minifying CSS
gem 'sprockets-rails', '~> 3.5'
gem 'dartsass-sprockets', '~> 3.2'

group :development do
  # `bundle exec thin` prints a reminder to use `bin/rails server` instead
  gem 'thin-tombstone', path: 'vendor/thin-tombstone'
end
