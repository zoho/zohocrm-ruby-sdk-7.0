require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class ShowFields
      include Util::Model

      # Creates an instance of ShowFields
      def initialize
        @show_data = nil
        @field = nil
        @key_modified = Hash.new
      end

        # The method to get the show_data
        # @return A Boolean value

      def show_data
        @show_data
      end

        # The method to set the value to show_data
        # @param show_data [Boolean] A Boolean

      def show_data=(show_data)
        if show_data!=nil and ! [true, false].include?show_data
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show_data EXPECTED TYPE: Boolean', nil, nil)
        end
        @show_data = show_data
        @key_modified['show_data'] = 1
      end

        # The method to get the field
        # @return An instance of MinifiedField

      def field
        @field
      end

        # The method to set the value to field
        # @param field [MinifiedField] An instance of MinifiedField

      def field=(field)
        if field!=nil and !field.is_a? MinifiedField
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field EXPECTED TYPE: MinifiedField', nil, nil)
        end
        @field = field
        @key_modified['field'] = 1
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
