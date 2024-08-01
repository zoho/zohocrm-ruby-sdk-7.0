require_relative '../util/model'

module ZOHOCRMSDK
  module DuplicateCheckPreference
    require_relative 'response_handler'
    class ResponseWrapper
      include Util::Model
      include ResponseHandler

      # Creates an instance of ResponseWrapper
      def initialize
        @duplicate_check_preference = nil
        @key_modified = Hash.new
      end

        # The method to get the duplicate_check_preference
        # @return An instance of DuplicateCheckPreference

      def duplicate_check_preference
        @duplicate_check_preference
      end

        # The method to set the value to duplicate_check_preference
        # @param duplicate_check_preference [DuplicateCheckPreference] An instance of DuplicateCheckPreference

      def duplicate_check_preference=(duplicate_check_preference)
        if duplicate_check_preference!=nil and !duplicate_check_preference.is_a? DuplicateCheckPreference
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: duplicate_check_preference EXPECTED TYPE: DuplicateCheckPreference', nil, nil)
        end
        @duplicate_check_preference = duplicate_check_preference
        @key_modified['duplicate_check_preference'] = 1
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
