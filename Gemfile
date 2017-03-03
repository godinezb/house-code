source 'https://rubygems.org'
ruby "2.4.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rack-cors', '~> 0.4.1'
gem 'active_model_serializers', '~> 0.10.0'
gem 'faker', '~> 1.7.3'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'dotenv-rails', '~> 2.1.1'
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl', '~> 4.7.0'
  gem 'shoulda-matchers', '~> 3.1.1'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
