source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# Linter
gem 'rubocop', '0.71.0'

group :test do
  # Testing framework for unit and feature tests
  gem 'rspec'
  # Test coverage
  gem 'simplecov', '~> 0.12.0'
  gem 'simplecov-console', require: false
  gem 'timecop', '~> 0.8.1'
end