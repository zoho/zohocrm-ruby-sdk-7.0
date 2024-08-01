require_relative '../users/users'
require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module ShareRecords
    class ShareRecord
      include Util::Model

      # Creates an instance of ShareRecord
      def initialize
        @shared_with = nil
        @share_related_records = nil
        @shared_through = nil
        @shared_time = nil
        @permission = nil
        @shared_by = nil
        @user = nil
        @type = nil
        @key_modified = Hash.new
      end

        # The method to get the shared_with
        # @return An instance of Users::Users

      def shared_with
        @shared_with
      end

        # The method to set the value to shared_with
        # @param shared_with [Users::Users] An instance of Users::Users

      def shared_with=(shared_with)
        if shared_with!=nil and !shared_with.is_a? Users::Users
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shared_with EXPECTED TYPE: Users', nil, nil)
        end
        @shared_with = shared_with
        @key_modified['shared_with'] = 1
      end

        # The method to get the share_related_records
        # @return A Boolean value

      def share_related_records
        @share_related_records
      end

        # The method to set the value to share_related_records
        # @param share_related_records [Boolean] A Boolean

      def share_related_records=(share_related_records)
        if share_related_records!=nil and ! [true, false].include?share_related_records
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: share_related_records EXPECTED TYPE: Boolean', nil, nil)
        end
        @share_related_records = share_related_records
        @key_modified['share_related_records'] = 1
      end

        # The method to get the shared_through
        # @return An instance of SharedThrough

      def shared_through
        @shared_through
      end

        # The method to set the value to shared_through
        # @param shared_through [SharedThrough] An instance of SharedThrough

      def shared_through=(shared_through)
        if shared_through!=nil and !shared_through.is_a? SharedThrough
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shared_through EXPECTED TYPE: SharedThrough', nil, nil)
        end
        @shared_through = shared_through
        @key_modified['shared_through'] = 1
      end

        # The method to get the shared_time
        # @return An instance of DateTime

      def shared_time
        @shared_time
      end

        # The method to set the value to shared_time
        # @param shared_time [DateTime] An instance of DateTime

      def shared_time=(shared_time)
        if shared_time!=nil and !shared_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shared_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @shared_time = shared_time
        @key_modified['shared_time'] = 1
      end

        # The method to get the permission
        # @return A String value

      def permission
        @permission
      end

        # The method to set the value to permission
        # @param permission [String] A String

      def permission=(permission)
        if permission!=nil and !permission.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: permission EXPECTED TYPE: String', nil, nil)
        end
        @permission = permission
        @key_modified['permission'] = 1
      end

        # The method to get the shared_by
        # @return An instance of Users::Users

      def shared_by
        @shared_by
      end

        # The method to set the value to shared_by
        # @param shared_by [Users::Users] An instance of Users::Users

      def shared_by=(shared_by)
        if shared_by!=nil and !shared_by.is_a? Users::Users
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shared_by EXPECTED TYPE: Users', nil, nil)
        end
        @shared_by = shared_by
        @key_modified['shared_by'] = 1
      end

        # The method to get the user
        # @return An instance of Users::Users

      def user
        @user
      end

        # The method to set the value to user
        # @param user [Users::Users] An instance of Users::Users

      def user=(user)
        if user!=nil and !user.is_a? Users::Users
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user EXPECTED TYPE: Users', nil, nil)
        end
        @user = user
        @key_modified['user'] = 1
      end

        # The method to get the type
        # @return An instance of Util::Choice

      def type
        @type
      end

        # The method to set the value to type
        # @param type [Util::Choice] An instance of Util::Choice

      def type=(type)
        if type!=nil and !type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
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
