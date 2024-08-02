require_relative '../fields/fields'
require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class Segment
      include Util::Model

      # Creates an instance of Segment
      def initialize
        @sequence_number = nil
        @display_label = nil
        @column_count = nil
        @id = nil
        @type = nil
        @fields = nil
        @buttons = nil
        @elements = nil
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

        # The method to get the column_count
        # @return A Integer value

      def column_count
        @column_count
      end

        # The method to set the value to column_count
        # @param column_count [Integer] A Integer

      def column_count=(column_count)
        if column_count!=nil and !column_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: column_count EXPECTED TYPE: Integer', nil, nil)
        end
        @column_count = column_count
        @key_modified['column_count'] = 1
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

        # The method to get the fields
        # @return An instance of Array

      def fields
        @fields
      end

        # The method to set the value to fields
        # @param fields [Array] An instance of Array

      def fields=(fields)
        if fields!=nil and !fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: Array', nil, nil)
        end
        @fields = fields
        @key_modified['fields'] = 1
      end

        # The method to get the buttons
        # @return An instance of Array

      def buttons
        @buttons
      end

        # The method to set the value to buttons
        # @param buttons [Array] An instance of Array

      def buttons=(buttons)
        if buttons!=nil and !buttons.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: buttons EXPECTED TYPE: Array', nil, nil)
        end
        @buttons = buttons
        @key_modified['buttons'] = 1
      end

        # The method to get the elements
        # @return An instance of Array

      def elements
        @elements
      end

        # The method to set the value to elements
        # @param elements [Array] An instance of Array

      def elements=(elements)
        if elements!=nil and !elements.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: elements EXPECTED TYPE: Array', nil, nil)
        end
        @elements = elements
        @key_modified['elements'] = 1
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
