require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class External
      include Util::Model

      # Creates an instance of External
      def initialize
        @show = nil
        @type = nil
        @allow_multiple_config = nil
        @key_modified = Hash.new
      end

        # The method to get the show
        # @return A Boolean value

      def show
        @show
      end

        # The method to set the value to show
        # @param show [Boolean] A Boolean

      def show=(show)
        if show!=nil and ! [true, false].include?show
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show EXPECTED TYPE: Boolean', nil, nil)
        end
        @show = show
        @key_modified['show'] = 1
      end

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the allow_multiple_config
        # @return A Boolean value

      def allow_multiple_config
        @allow_multiple_config
      end

        # The method to set the value to allow_multiple_config
        # @param allow_multiple_config [Boolean] A Boolean

      def allow_multiple_config=(allow_multiple_config)
        if allow_multiple_config!=nil and ! [true, false].include?allow_multiple_config
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: allow_multiple_config EXPECTED TYPE: Boolean', nil, nil)
        end
        @allow_multiple_config = allow_multiple_config
        @key_modified['allow_multiple_config'] = 1
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
