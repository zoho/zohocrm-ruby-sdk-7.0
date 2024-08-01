require_relative '../change_owner/body_wrapper'
require_relative '../util/model'

module ZOHOCRMSDK
  module ChangeOwner
    class MassWrapper < BodyWrapper
      include Util::Model

      # Creates an instance of MassWrapper
      def initialize
        super
        @ids = nil
        @owner = nil
        @notify = nil
        @related_modules = nil
        @key_modified = Hash.new
      end

        # The method to get the ids
        # @return An instance of Array

      def ids
        @ids
      end

        # The method to set the value to ids
        # @param ids [Array] An instance of Array

      def ids=(ids)
        if ids!=nil and !ids.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ids EXPECTED TYPE: Array', nil, nil)
        end
        @ids = ids
        @key_modified['ids'] = 1
      end

        # The method to get the owner
        # @return An instance of Owner

      def owner
        @owner
      end

        # The method to set the value to owner
        # @param owner [Owner] An instance of Owner

      def owner=(owner)
        if owner!=nil and !owner.is_a? Owner
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: owner EXPECTED TYPE: Owner', nil, nil)
        end
        @owner = owner
        @key_modified['owner'] = 1
      end

        # The method to get the notify
        # @return A Boolean value

      def notify
        @notify
      end

        # The method to set the value to notify
        # @param notify [Boolean] A Boolean

      def notify=(notify)
        if notify!=nil and ! [true, false].include?notify
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: notify EXPECTED TYPE: Boolean', nil, nil)
        end
        @notify = notify
        @key_modified['notify'] = 1
      end

        # The method to get the related_modules
        # @return An instance of Array

      def related_modules
        @related_modules
      end

        # The method to set the value to related_modules
        # @param related_modules [Array] An instance of Array

      def related_modules=(related_modules)
        if related_modules!=nil and !related_modules.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_modules EXPECTED TYPE: Array', nil, nil)
        end
        @related_modules = related_modules
        @key_modified['related_modules'] = 1
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
