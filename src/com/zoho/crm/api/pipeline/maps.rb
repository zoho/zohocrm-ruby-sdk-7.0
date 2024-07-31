require_relative '../util/model'

module ZOHOCRMSDK
  module Pipeline
    class Maps
      include Util::Model

      # Creates an instance of Maps
      def initialize
        @display_value = nil
        @sequence_number = nil
        @forecast_category = nil
        @delete = nil
        @actual_value = nil
        @id = nil
        @colour_code = nil
        @forecast_type = nil
        @key_modified = Hash.new
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

        # The method to get the forecast_category
        # @return An instance of ForecastCategory

      def forecast_category
        @forecast_category
      end

        # The method to set the value to forecast_category
        # @param forecast_category [ForecastCategory] An instance of ForecastCategory

      def forecast_category=(forecast_category)
        if forecast_category!=nil and !forecast_category.is_a? ForecastCategory
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: forecast_category EXPECTED TYPE: ForecastCategory', nil, nil)
        end
        @forecast_category = forecast_category
        @key_modified['forecast_category'] = 1
      end

        # The method to get the delete
        # @return A Boolean value

      def delete
        @delete
      end

        # The method to set the value to delete
        # @param delete [Boolean] A Boolean

      def delete=(delete)
        if delete!=nil and ! [true, false].include?delete
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delete EXPECTED TYPE: Boolean', nil, nil)
        end
        @delete = delete
        @key_modified['_delete'] = 1
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

        # The method to get the forecast_type
        # @return A String value

      def forecast_type
        @forecast_type
      end

        # The method to set the value to forecast_type
        # @param forecast_type [String] A String

      def forecast_type=(forecast_type)
        if forecast_type!=nil and !forecast_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: forecast_type EXPECTED TYPE: String', nil, nil)
        end
        @forecast_type = forecast_type
        @key_modified['forecast_type'] = 1
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
