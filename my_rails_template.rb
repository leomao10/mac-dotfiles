def source_paths
  [__dir__]
end

gem_group :development, :test do
  # Note that rspec-rails 4.0 is still a beta release
  gem 'rspec-rails', '~> 4.0.0.beta'
end

after_bundle do
  generate 'rspec:install'
end
