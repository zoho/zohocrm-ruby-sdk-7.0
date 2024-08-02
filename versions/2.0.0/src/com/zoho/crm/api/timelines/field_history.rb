require_relative '../util/model'

module ZOHOCRMSDK
  module Timelines
    class FieldHistory
      include Util::Model

      # Creates an instance of FieldHistory
      def initialize
        @data_type = nil
        @enable_colour_code = nil
        @pick_list_values = nil
        @field_label = nil
        @api_name = nil
        @id = nil
        @value = nil
        @key_modified = Hash.new
      end

        # The method to get the data_type
        # @return A String value

      def data_type
        @data_type
      end

        # The method to set the value to data_type
        # @param data_type [String] A String

      def data_type=(data_type)
        if data_type!=nil and !data_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data_type EXPECTED TYPE: String', nil, nil)
        end
        @data_type = data_type
        @key_modified['data_type'] = 1
      end

        # The method to get the enable_colour_code
        # @return A Boolean value

      def enable_colour_code
        @enable_colour_code
      end

        # The method to set the value to enable_colour_code
        # @param enable_colour_code [Boolean] A Boolean

      def enable_colour_code=(enable_colour_code)
        if enable_colour_code!=nil and ! [true, false].include?enable_colour_code
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: enable_colour_code EXPECTED TYPE: Boolean', nil, nil)
        end
        @enable_colour_code = enable_colour_code
        @key_modified['enable_colour_code'] = 1
      end

        # The method to get the pick_list_values
        # @return An instance of Array

      def pick_list_values
        @pick_list_values
      end

        # The method to set the value to pick_list_values
        # @param pick_list_values [Array] An instance of Array

      def pick_list_values=(pick_list_values)
        if pick_list_values!=nil and !pick_list_values.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pick_list_values EXPECTED TYPE: Array', nil, nil)
        end
        @pick_list_values = pick_list_values
        @key_modified['pick_list_values'] = 1
      end

        # The method to get the field_label
        # @return A String value

      def field_label
        @field_label
      end

        # The method to set the value to field_label
        # @param field_label [String] A String

      def field_label=(field_label)
        if field_label!=nil and !field_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_label EXPECTED TYPE: String', nil, nil)
        end
        @field_label = field_label
        @key_modified['field_label'] = 1
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

        # The method to get the value
        # @return An instance of FieldHistoryValue

      def value
        @value
      end

        # The method to set the value to value
        # @param value [FieldHistoryValue] An instance of FieldHistoryValue

      def value=(value)
        if value!=nil and !value.is_a? FieldHistoryValue
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: value EXPECTED TYPE: FieldHistoryValue', nil, nil)
        end
        @value = value
        @key_modified['_value'] = 1
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
