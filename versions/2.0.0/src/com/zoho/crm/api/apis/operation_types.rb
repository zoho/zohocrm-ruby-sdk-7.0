require_relative '../util/model'

module ZOHOCRMSDK
  module APIs
    class OperationTypes
      include Util::Model

      # Creates an instance of OperationTypes
      def initialize
        @method = nil
        @oauth_scope = nil
        @max_credits = nil
        @min_credits = nil
        @key_modified = Hash.new
      end

        # The method to get the method
        # @return A String value

      def method
        @method
      end

        # The method to set the value to method
        # @param method [String] A String

      def method=(method)
        if method!=nil and !method.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: method EXPECTED TYPE: String', nil, nil)
        end
        @method = method
        @key_modified['method'] = 1
      end

        # The method to get the oauth_scope
        # @return A String value

      def oauth_scope
        @oauth_scope
      end

        # The method to set the value to oauth_scope
        # @param oauth_scope [String] A String

      def oauth_scope=(oauth_scope)
        if oauth_scope!=nil and !oauth_scope.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: oauth_scope EXPECTED TYPE: String', nil, nil)
        end
        @oauth_scope = oauth_scope
        @key_modified['oauth_scope'] = 1
      end

        # The method to get the max_credits
        # @return A Integer value

      def max_credits
        @max_credits
      end

        # The method to set the value to max_credits
        # @param max_credits [Integer] A Integer

      def max_credits=(max_credits)
        if max_credits!=nil and !max_credits.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: max_credits EXPECTED TYPE: Integer', nil, nil)
        end
        @max_credits = max_credits
        @key_modified['max_credits'] = 1
      end

        # The method to get the min_credits
        # @return A Integer value

      def min_credits
        @min_credits
      end

        # The method to set the value to min_credits
        # @param min_credits [Integer] A Integer

      def min_credits=(min_credits)
        if min_credits!=nil and !min_credits.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: min_credits EXPECTED TYPE: Integer', nil, nil)
        end
        @min_credits = min_credits
        @key_modified['min_credits'] = 1
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
