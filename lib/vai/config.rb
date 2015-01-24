module VagrantPlugins
  module Vai
    class Config < Vagrant.plugin("2", :config)
      attr_accessor :inventory_dir
      attr_accessor :groups
      
      def initialize
        @inventory_dir = UNSET_VALUE
        @groups        = UNSET_VALUE
      end

      def finalize!
        @inventory_dir = nil if @inventory_dir == UNSET_VALUE
        @groups        = {}  if @groups == UNSET_VALUE
      end

      def validate(machine)
        errors = _detected_errors

        if !inventory_dir
          errors << "inventory_dir not specified."
        end
        { "ansible inventory provisioner" => errors }
      end
    end
  end
end

