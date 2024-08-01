require_relative '../util/model'

module ZOHOCRMSDK
  module PortalsMeta
    class Modules
      include Util::Model

      # Creates an instance of Modules
      def initialize
        @plural_label = nil
        @shared_type = nil
        @api_name = nil
        @id = nil
        @filters = nil
        @layouts = nil
        @views = nil
        @key_modified = Hash.new
      end

        # The method to get the plural_label
        # @return A String value

      def plural_label
        @plural_label
      end

        # The method to set the value to plural_label
        # @param plural_label [String] A String

      def plural_label=(plural_label)
        if plural_label!=nil and !plural_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: plural_label EXPECTED TYPE: String', nil, nil)
        end
        @plural_label = plural_label
        @key_modified['plural_label'] = 1
      end

        # The method to get the shared_type
        # @return A String value

      def shared_type
        @shared_type
      end

        # The method to set the value to shared_type
        # @param shared_type [String] A String

      def shared_type=(shared_type)
        if shared_type!=nil and !shared_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shared_type EXPECTED TYPE: String', nil, nil)
        end
        @shared_type = shared_type
        @key_modified['shared_type'] = 1
      end

        # The method to get the api_name
        # @return A String value

      def api_name
        @api_name
      end

        # The method to set the value to api_name
        # @param api_name [String] A String

      def api_name=(api_name)
        if api_name!=nil and !api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
        end
        @api_name = api_name
        @key_modified['api_name'] = 1
      end

        # The method to get the id
        # @return A Integer value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [Integer] A Integer

      def id=(id)
        if id!=nil and !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
      end

        # The method to get the filters
        # @return An instance of Array

      def filters
        @filters
      end

        # The method to set the value to filters
        # @param filters [Array] An instance of Array

      def filters=(filters)
        if filters!=nil and !filters.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: filters EXPECTED TYPE: Array', nil, nil)
        end
        @filters = filters
        @key_modified['filters'] = 1
      end

        # The method to get the layouts
        # @return An instance of Array

      def layouts
        @layouts
      end

        # The method to set the value to layouts
        # @param layouts [Array] An instance of Array

      def layouts=(layouts)
        if layouts!=nil and !layouts.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layouts EXPECTED TYPE: Array', nil, nil)
        end
        @layouts = layouts
        @key_modified['layouts'] = 1
      end

        # The method to get the views
        # @return An instance of Array

      def views
        @views
      end

        # The method to set the value to views
        # @param views [Array] An instance of Array

      def views=(views)
        if views!=nil and !views.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: views EXPECTED TYPE: Array', nil, nil)
        end
        @views = views
        @key_modified['views'] = 1
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
