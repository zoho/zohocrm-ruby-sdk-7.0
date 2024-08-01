require_relative '../util/model'

module ZOHOCRMSDK
  module Tags
    class NewTagRequestWrapper
      include Util::Model

      # Creates an instance of NewTagRequestWrapper
      def initialize
        @tags = nil
        @over_write = nil
        @ids = nil
        @key_modified = Hash.new
      end

        # The method to get the tags
        # @return An instance of Array

      def tags
        @tags
      end

        # The method to set the value to tags
        # @param tags [Array] An instance of Array

      def tags=(tags)
        if tags!=nil and !tags.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tags EXPECTED TYPE: Array', nil, nil)
        end
        @tags = tags
        @key_modified['tags'] = 1
      end

        # The method to get the over_write
        # @return A Boolean value

      def over_write
        @over_write
      end

        # The method to set the value to over_write
        # @param over_write [Boolean] A Boolean

      def over_write=(over_write)
        if over_write!=nil and ! [true, false].include?over_write
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: over_write EXPECTED TYPE: Boolean', nil, nil)
        end
        @over_write = over_write
        @key_modified['over_write'] = 1
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
