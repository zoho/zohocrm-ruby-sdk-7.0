require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    class SourcesCount
      include Util::Model

      # Creates an instance of SourcesCount
      def initialize
        @territories = nil
        @roles = nil
        @groups = nil
        @users = nil
        @key_modified = Hash.new
      end

        # The method to get the territories
        # @return A Integer value

      def territories
        @territories
      end

        # The method to set the value to territories
        # @param territories [Integer] A Integer

      def territories=(territories)
        if territories!=nil and !territories.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territories EXPECTED TYPE: Integer', nil, nil)
        end
        @territories = territories
        @key_modified['territories'] = 1
      end

        # The method to get the roles
        # @return A Integer value

      def roles
        @roles
      end

        # The method to set the value to roles
        # @param roles [Integer] A Integer

      def roles=(roles)
        if roles!=nil and !roles.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: roles EXPECTED TYPE: Integer', nil, nil)
        end
        @roles = roles
        @key_modified['roles'] = 1
      end

        # The method to get the groups
        # @return A Integer value

      def groups
        @groups
      end

        # The method to set the value to groups
        # @param groups [Integer] A Integer

      def groups=(groups)
        if groups!=nil and !groups.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: groups EXPECTED TYPE: Integer', nil, nil)
        end
        @groups = groups
        @key_modified['groups'] = 1
      end

        # The method to get the users
        # @return An instance of Users

      def users
        @users
      end

        # The method to set the value to users
        # @param users [Users] An instance of Users

      def users=(users)
        if users!=nil and !users.is_a? Users
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: users EXPECTED TYPE: Users', nil, nil)
        end
        @users = users
        @key_modified['users'] = 1
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
