source 'https://rubygems.org'

ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'active_model_serializers', '~> 0.10.0'
gem 'rails', '~> 5.1.2'
gem 'puma', '~> 3.7'
gem 'bcrypt', '~> 3.1.7'
gem 'jwt', '~> 1.5.4'
gem 'will_paginate'
gem 'ruby-oci8'
gem 'activerecord-oracle_enhanced-adapter'
gem 'rack-cors'


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'listen'
gem 'byebug'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
