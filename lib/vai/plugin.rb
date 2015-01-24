require "vagrant"
module VagrantPlugins
  module Vai
    class Plugin < Vagrant.plugin("2")
      name "vai"
      description <<-DESC
      Provides support for auto generating an ansible inventory file
      DESC

      config(:vai, :provisioner) do
        require File.expand_path("../config", __FILE__)
        Config
      end

      provisioner(:vai) do
        require File.expand_path("../provisioner", __FILE__)
        Provisioner
      end
    end
  end
end
