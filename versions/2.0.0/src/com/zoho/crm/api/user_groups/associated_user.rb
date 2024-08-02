require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    class AssociatedUser
      include Util::Model

      # Creates an instance of AssociatedUser
      def initialize
        @user_group = nil
        @count = nil
        @key_modified = Hash.new
      end

        # The method to get the user_group
        # @return An instance of UserGroup

      def user_group
        @user_group
      end

        # The method to set the value to user_group
        # @param user_group [UserGroup] An instance of UserGroup

      def user_group=(user_group)
        if user_group!=nil and !user_group.is_a? UserGroup
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_group EXPECTED TYPE: UserGroup', nil, nil)
        end
        @user_group = user_group
        @key_modified['user_group'] = 1
      end

        # The method to get the count
        # @return A Integer value

      def count
        @count
      end

        # The method to set the value to count
        # @param count [Integer] A Integer

      def count=(count)
        if count!=nil and !count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: count EXPECTED TYPE: Integer', nil, nil)
        end
        @count = count
        @key_modified['count'] = 1
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
