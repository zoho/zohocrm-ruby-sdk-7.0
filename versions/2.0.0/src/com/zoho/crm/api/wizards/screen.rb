require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class Screen
      include Util::Model

      # Creates an instance of Screen
      def initialize
        @display_label = nil
        @api_name = nil
        @id = nil
        @reference_id = nil
        @conditional_rules = nil
        @segments = nil
        @key_modified = Hash.new
      end

        # The method to get the display_label
        # @return A String value

      def display_label
        @display_label
      end

        # The method to set the value to display_label
        # @param display_label [String] A String

      def display_label=(display_label)
        if display_label!=nil and !display_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_label EXPECTED TYPE: String', nil, nil)
        end
        @display_label = display_label
        @key_modified['display_label'] = 1
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

        # The method to get the reference_id
        # @return A String value

      def reference_id
        @reference_id
      end

        # The method to set the value to reference_id
        # @param reference_id [String] A String

      def reference_id=(reference_id)
        if reference_id!=nil and !reference_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reference_id EXPECTED TYPE: String', nil, nil)
        end
        @reference_id = reference_id
        @key_modified['reference_id'] = 1
      end

        # The method to get the conditional_rules
        # @return An instance of Array

      def conditional_rules
        @conditional_rules
      end

        # The method to set the value to conditional_rules
        # @param conditional_rules [Array] An instance of Array

      def conditional_rules=(conditional_rules)
        if conditional_rules!=nil and !conditional_rules.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: conditional_rules EXPECTED TYPE: Array', nil, nil)
        end
        @conditional_rules = conditional_rules
        @key_modified['conditional_rules'] = 1
      end

        # The method to get the segments
        # @return An instance of Array

      def segments
        @segments
      end

        # The method to set the value to segments
        # @param segments [Array] An instance of Array

      def segments=(segments)
        if segments!=nil and !segments.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: segments EXPECTED TYPE: Array', nil, nil)
        end
        @segments = segments
        @key_modified['segments'] = 1
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
