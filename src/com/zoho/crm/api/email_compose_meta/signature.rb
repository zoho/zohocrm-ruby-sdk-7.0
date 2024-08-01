require_relative '../util/model'

module ZOHOCRMSDK
  module EmailComposeMeta
    class Signature
      include Util::Model

      # Creates an instance of Signature
      def initialize
        @mode = nil
        @sign = nil
        @key_modified = Hash.new
      end

        # The method to get the mode
        # @return A Integer value

      def mode
        @mode
      end

        # The method to set the value to mode
        # @param mode [Integer] A Integer

      def mode=(mode)
        if mode!=nil and !mode.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mode EXPECTED TYPE: Integer', nil, nil)
        end
        @mode = mode
        @key_modified['mode'] = 1
      end

        # The method to get the sign
        # @return A String value

      def sign
        @sign
      end

        # The method to set the value to sign
        # @param sign [String] A String

      def sign=(sign)
        if sign!=nil and !sign.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sign EXPECTED TYPE: String', nil, nil)
        end
        @sign = sign
        @key_modified['sign'] = 1
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
