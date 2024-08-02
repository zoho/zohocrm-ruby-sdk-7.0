require_relative '../util/model'

module ZOHOCRMSDK
  module GlobalPicklists
    class ReplacePicklistValues
      include Util::Model

      # Creates an instance of ReplacePicklistValues
      def initialize
        @new_value = nil
        @old_value = nil
        @key_modified = Hash.new
      end

        # The method to get the new_value
        # @return An instance of ReplacePicklistValue

      def new_value
        @new_value
      end

        # The method to set the value to new_value
        # @param new_value [ReplacePicklistValue] An instance of ReplacePicklistValue

      def new_value=(new_value)
        if new_value!=nil and !new_value.is_a? ReplacePicklistValue
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: new_value EXPECTED TYPE: ReplacePicklistValue', nil, nil)
        end
        @new_value = new_value
        @key_modified['new_value'] = 1
      end

        # The method to get the old_value
        # @return An instance of ReplacePicklistValue

      def old_value
        @old_value
      end

        # The method to set the value to old_value
        # @param old_value [ReplacePicklistValue] An instance of ReplacePicklistValue

      def old_value=(old_value)
        if old_value!=nil and !old_value.is_a? ReplacePicklistValue
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: old_value EXPECTED TYPE: ReplacePicklistValue', nil, nil)
        end
        @old_value = old_value
        @key_modified['old_value'] = 1
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
