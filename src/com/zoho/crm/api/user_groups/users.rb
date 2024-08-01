require_relative '../util/model'

module ZOHOCRMSDK
  module UserGroups
    class Users
      include Util::Model

      # Creates an instance of Users
      def initialize
        @inactive = nil
        @deleted = nil
        @active = nil
        @key_modified = Hash.new
      end

        # The method to get the inactive
        # @return A Integer value

      def inactive
        @inactive
      end

        # The method to set the value to inactive
        # @param inactive [Integer] A Integer

      def inactive=(inactive)
        if inactive!=nil and !inactive.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: inactive EXPECTED TYPE: Integer', nil, nil)
        end
        @inactive = inactive
        @key_modified['inactive'] = 1
      end

        # The method to get the deleted
        # @return A Integer value

      def deleted
        @deleted
      end

        # The method to set the value to deleted
        # @param deleted [Integer] A Integer

      def deleted=(deleted)
        if deleted!=nil and !deleted.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deleted EXPECTED TYPE: Integer', nil, nil)
        end
        @deleted = deleted
        @key_modified['deleted'] = 1
      end

        # The method to get the active
        # @return A Integer value

      def active
        @active
      end

        # The method to set the value to active
        # @param active [Integer] A Integer

      def active=(active)
        if active!=nil and !active.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: active EXPECTED TYPE: Integer', nil, nil)
        end
        @active = active
        @key_modified['active'] = 1
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
