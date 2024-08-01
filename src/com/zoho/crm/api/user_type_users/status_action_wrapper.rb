require_relative '../util/model'

module ZOHOCRMSDK
  module UserTypeUsers
    require_relative 'status_action_handler'
    class StatusActionWrapper
      include Util::Model
      include StatusActionHandler

      # Creates an instance of StatusActionWrapper
      def initialize
        @change_status = nil
        @key_modified = Hash.new
      end

        # The method to get the change_status
        # @return An instance of Array

      def change_status
        @change_status
      end

        # The method to set the value to change_status
        # @param change_status [Array] An instance of Array

      def change_status=(change_status)
        if change_status!=nil and !change_status.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: change_status EXPECTED TYPE: Array', nil, nil)
        end
        @change_status = change_status
        @key_modified['change_status'] = 1
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
