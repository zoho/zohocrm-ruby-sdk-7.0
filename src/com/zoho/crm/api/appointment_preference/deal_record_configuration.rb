require_relative '../util/model'

module ZOHOCRMSDK
  module AppointmentPreference
    class DealRecordConfiguration
      include Util::Model

      # Creates an instance of DealRecordConfiguration
      def initialize
        @layout = nil
        @field_mappings = nil
        @id = nil
        @key_modified = Hash.new
      end

        # The method to get the layout
        # @return An instance of Layout

      def layout
        @layout
      end

        # The method to set the value to layout
        # @param layout [Layout] An instance of Layout

      def layout=(layout)
        if layout!=nil and !layout.is_a? Layout
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layout EXPECTED TYPE: Layout', nil, nil)
        end
        @layout = layout
        @key_modified['layout'] = 1
      end

        # The method to get the field_mappings
        # @return An instance of Array

      def field_mappings
        @field_mappings
      end

        # The method to set the value to field_mappings
        # @param field_mappings [Array] An instance of Array

      def field_mappings=(field_mappings)
        if field_mappings!=nil and !field_mappings.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_mappings EXPECTED TYPE: Array', nil, nil)
        end
        @field_mappings = field_mappings
        @key_modified['field_mappings'] = 1
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
