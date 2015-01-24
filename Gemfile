source 'https://rubygems.org'

# Can't use `gemspec` to pull in dependencies, because the vai gem needs
# to be in the :plugins group for Vagrant to detect and load it in development
#gemspec

group :development do
  gem "vagrant", git: "https://github.com/mitchellh/vagrant.git"
end

group :plugins do
  gemspec
end