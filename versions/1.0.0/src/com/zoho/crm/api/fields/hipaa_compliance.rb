require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class HipaaCompliance
      include Util::Model

      # Creates an instance of HipaaCompliance
      def initialize
        @restricted_in_export = nil
        @restricted = nil
        @key_modified = Hash.new
      end

        # The method to get the restricted_in_export
        # @return A Boolean value

      def restricted_in_export
        @restricted_in_export
      end

        # The method to set the value to restricted_in_export
        # @param restricted_in_export [Boolean] A Boolean

      def restricted_in_export=(restricted_in_export)
        if restricted_in_export!=nil and ! [true, false].include?restricted_in_export
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restricted_in_export EXPECTED TYPE: Boolean', nil, nil)
        end
        @restricted_in_export = restricted_in_export
        @key_modified['restricted_in_export'] = 1
      end

        # The method to get the restricted
        # @return A Boolean value

      def restricted
        @restricted
      end

        # The method to set the value to restricted
        # @param restricted [Boolean] A Boolean

      def restricted=(restricted)
        if restricted!=nil and ! [true, false].include?restricted
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restricted EXPECTED TYPE: Boolean', nil, nil)
        end
        @restricted = restricted
        @key_modified['restricted'] = 1
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
