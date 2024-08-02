require_relative '../util/model'

module ZOHOCRMSDK
  module GlobalPicklists
    require_relative 'replace_action_handler'
    class ReplaceActionWrapper
      include Util::Model
      include ReplaceActionHandler

      # Creates an instance of ReplaceActionWrapper
      def initialize
        @replace_picklist_values = nil
        @key_modified = Hash.new
      end

        # The method to get the replace_picklist_values
        # @return An instance of Array

      def replace_picklist_values
        @replace_picklist_values
      end

        # The method to set the value to replace_picklist_values
        # @param replace_picklist_values [Array] An instance of Array

      def replace_picklist_values=(replace_picklist_values)
        if replace_picklist_values!=nil and !replace_picklist_values.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: replace_picklist_values EXPECTED TYPE: Array', nil, nil)
        end
        @replace_picklist_values = replace_picklist_values
        @key_modified['replace_picklist_values'] = 1
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
