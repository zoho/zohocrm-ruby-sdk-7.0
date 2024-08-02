require_relative '../util/model'

module ZOHOCRMSDK
  module InventoryMassConvert
    class BodyWrapper
      include Util::Model

      # Creates an instance of BodyWrapper
      def initialize
        @convert_to = nil
        @assign_to = nil
        @related_modules = nil
        @ids = nil
        @key_modified = Hash.new
      end

        # The method to get the convert_to
        # @return An instance of Array

      def convert_to
        @convert_to
      end

        # The method to set the value to convert_to
        # @param convert_to [Array] An instance of Array

      def convert_to=(convert_to)
        if convert_to!=nil and !convert_to.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: convert_to EXPECTED TYPE: Array', nil, nil)
        end
        @convert_to = convert_to
        @key_modified['convert_to'] = 1
      end

        # The method to get the assign_to
        # @return An instance of User

      def assign_to
        @assign_to
      end

        # The method to set the value to assign_to
        # @param assign_to [User] An instance of User

      def assign_to=(assign_to)
        if assign_to!=nil and !assign_to.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: assign_to EXPECTED TYPE: User', nil, nil)
        end
        @assign_to = assign_to
        @key_modified['assign_to'] = 1
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
