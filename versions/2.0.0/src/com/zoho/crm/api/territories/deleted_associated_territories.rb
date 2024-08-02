require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module Territories
    class DeletedAssociatedTerritories
      include Util::Model

      # Creates an instance of DeletedAssociatedTerritories
      def initialize
        @name = nil
        @id = nil
        @deleted_time = nil
        @deleted_by = nil
        @key_modified = Hash.new
      end

        # The method to get the name
        # @return A String value

      def name
        @name
      end

        # The method to set the value to name
        # @param name [String] A String

      def name=(name)
        if name!=nil and !name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
        end
        @name = name
        @key_modified['name'] = 1
      end

        # The method to get the id
        # @return A String value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [String] A String

      def id=(id)
        if id!=nil and !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
      end

        # The method to get the deleted_time
        # @return An instance of DateTime

      def deleted_time
        @deleted_time
      end

        # The method to set the value to deleted_time
        # @param deleted_time [DateTime] An instance of DateTime

      def deleted_time=(deleted_time)
        if deleted_time!=nil and !deleted_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deleted_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @deleted_time = deleted_time
        @key_modified['deleted_time'] = 1
      end

        # The method to get the deleted_by
        # @return An instance of Users::MinifiedUser

      def deleted_by
        @deleted_by
      end

        # The method to set the value to deleted_by
        # @param deleted_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def deleted_by=(deleted_by)
        if deleted_by!=nil and !deleted_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deleted_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @deleted_by = deleted_by
        @key_modified['deleted_by'] = 1
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
