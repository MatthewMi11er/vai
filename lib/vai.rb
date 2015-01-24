begin
  require 'vagrant'
rescue LoadError
  raise 'The Vagrant vai provisioner must be run within Vagrant.'
end

module Vai
  # nothing to do here
end

require_relative "vai/version"
require_relative 'vai/plugin'
