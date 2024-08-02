require_relative '../util/model'

module ZOHOCRMSDK
  module EmailSharingDetails
    class EmailSharings
      include Util::Model

      # Creates an instance of EmailSharings
      def initialize
        @share_from_users = nil
        @available_types = nil
        @key_modified = Hash.new
      end

        # The method to get the share_from_users
        # @return An instance of Array

      def share_from_users
        @share_from_users
      end

        # The method to set the value to share_from_users
        # @param share_from_users [Array] An instance of Array

      def share_from_users=(share_from_users)
        if share_from_users!=nil and !share_from_users.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: share_from_users EXPECTED TYPE: Array', nil, nil)
        end
        @share_from_users = share_from_users
        @key_modified['share_from_users'] = 1
      end

        # The method to get the available_types
        # @return An instance of Array

      def available_types
        @available_types
      end

        # The method to set the value to available_types
        # @param available_types [Array] An instance of Array

      def available_types=(available_types)
        if available_types!=nil and !available_types.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: available_types EXPECTED TYPE: Array', nil, nil)
        end
        @available_types = available_types
        @key_modified['available_types'] = 1
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
