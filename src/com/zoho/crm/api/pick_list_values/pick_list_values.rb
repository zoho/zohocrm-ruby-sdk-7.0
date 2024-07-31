require_relative '../util/model'

module ZOHOCRMSDK
  module PickListValues
    class PickListValues
      include Util::Model

      # Creates an instance of PickListValues
      def initialize
        @sequence_number = nil
        @display_value = nil
        @reference_value = nil
        @colour_code = nil
        @actual_value = nil
        @id = nil
        @type = nil
        @layout_associations = nil
        @key_modified = Hash.new
      end

        # The method to get the sequence_number
        # @return A Integer value

      def sequence_number
        @sequence_number
      end

        # The method to set the value to sequence_number
        # @param sequence_number [Integer] A Integer

      def sequence_number=(sequence_number)
        if sequence_number!=nil and !sequence_number.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sequence_number EXPECTED TYPE: Integer', nil, nil)
        end
        @sequence_number = sequence_number
        @key_modified['sequence_number'] = 1
      end

        # The method to get the display_value
        # @return A String value

      def display_value
        @display_value
      end

        # The method to set the value to display_value
        # @param display_value [String] A String

      def display_value=(display_value)
        if display_value!=nil and !display_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_value EXPECTED TYPE: String', nil, nil)
        end
        @display_value = display_value
        @key_modified['display_value'] = 1
      end

        # The method to get the reference_value
        # @return A String value

      def reference_value
        @reference_value
      end

        # The method to set the value to reference_value
        # @param reference_value [String] A String

      def reference_value=(reference_value)
        if reference_value!=nil and !reference_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reference_value EXPECTED TYPE: String', nil, nil)
        end
        @reference_value = reference_value
        @key_modified['reference_value'] = 1
      end

        # The method to get the colour_code
        # @return A String value

      def colour_code
        @colour_code
      end

        # The method to set the value to colour_code
        # @param colour_code [String] A String

      def colour_code=(colour_code)
        if colour_code!=nil and !colour_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: colour_code EXPECTED TYPE: String', nil, nil)
        end
        @colour_code = colour_code
        @key_modified['colour_code'] = 1
      end

        # The method to get the actual_value
        # @return A String value

      def actual_value
        @actual_value
      end

        # The method to set the value to actual_value
        # @param actual_value [String] A String

      def actual_value=(actual_value)
        if actual_value!=nil and !actual_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: actual_value EXPECTED TYPE: String', nil, nil)
        end
        @actual_value = actual_value
        @key_modified['actual_value'] = 1
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

        # The method to get the layout_associations
        # @return An instance of Array

      def layout_associations
        @layout_associations
      end

        # The method to set the value to layout_associations
        # @param layout_associations [Array] An instance of Array

      def layout_associations=(layout_associations)
        if layout_associations!=nil and !layout_associations.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layout_associations EXPECTED TYPE: Array', nil, nil)
        end
        @layout_associations = layout_associations
        @key_modified['layout_associations'] = 1
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
