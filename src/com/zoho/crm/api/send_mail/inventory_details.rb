require_relative '../util/model'

module ZOHOCRMSDK
  module SendMail
    class InventoryDetails
      include Util::Model

      # Creates an instance of InventoryDetails
      def initialize
        @inventory_template = nil
        @key_modified = Hash.new
      end

        # The method to get the inventory_template
        # @return An instance of InventoryTemplate

      def inventory_template
        @inventory_template
      end

        # The method to set the value to inventory_template
        # @param inventory_template [InventoryTemplate] An instance of InventoryTemplate

      def inventory_template=(inventory_template)
        if inventory_template!=nil and !inventory_template.is_a? InventoryTemplate
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: inventory_template EXPECTED TYPE: InventoryTemplate', nil, nil)
        end
        @inventory_template = inventory_template
        @key_modified['inventory_template'] = 1
      end

        # The method to check if the user has modified the given key
        # @param key [String] A String
        # @return A Integer value

      def is_key_modified(key)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if @key_modified.key?(key)
          return @key_modified[key]
        end

        nil
      end

        # The method to mark the given key as modified
        # @param key [String] A String
        # @param modification [Integer] A Integer

      def set_key_modified(key, modification)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if modification!=nil and !modification.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modification EXPECTED TYPE: Integer', nil, nil)
        end
        @key_modified[key] = modification
      end

    end
  end
end
