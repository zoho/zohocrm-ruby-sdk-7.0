require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class OperationType
      include Util::Model

      # Creates an instance of OperationType
      def initialize
        @web_update = nil
        @api_create = nil
        @web_create = nil
        @api_update = nil
        @key_modified = Hash.new
      end

        # The method to get the web_update
        # @return A Boolean value

      def web_update
        @web_update
      end

        # The method to set the value to web_update
        # @param web_update [Boolean] A Boolean

      def web_update=(web_update)
        if web_update!=nil and ! [true, false].include?web_update
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: web_update EXPECTED TYPE: Boolean', nil, nil)
        end
        @web_update = web_update
        @key_modified['web_update'] = 1
      end

        # The method to get the api_create
        # @return A Boolean value

      def api_create
        @api_create
      end

        # The method to set the value to api_create
        # @param api_create [Boolean] A Boolean

      def api_create=(api_create)
        if api_create!=nil and ! [true, false].include?api_create
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_create EXPECTED TYPE: Boolean', nil, nil)
        end
        @api_create = api_create
        @key_modified['api_create'] = 1
      end

        # The method to get the web_create
        # @return A Boolean value

      def web_create
        @web_create
      end

        # The method to set the value to web_create
        # @param web_create [Boolean] A Boolean

      def web_create=(web_create)
        if web_create!=nil and ! [true, false].include?web_create
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: web_create EXPECTED TYPE: Boolean', nil, nil)
        end
        @web_create = web_create
        @key_modified['web_create'] = 1
      end

        # The method to get the api_update
        # @return A Boolean value

      def api_update
        @api_update
      end

        # The method to set the value to api_update
        # @param api_update [Boolean] A Boolean

      def api_update=(api_update)
        if api_update!=nil and ! [true, false].include?api_update
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_update EXPECTED TYPE: Boolean', nil, nil)
        end
        @api_update = api_update
        @key_modified['api_update'] = 1
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
