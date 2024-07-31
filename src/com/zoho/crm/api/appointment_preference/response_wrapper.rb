require_relative '../util/model'

module ZOHOCRMSDK
  module AppointmentPreference
    require_relative 'response_handler'
    class ResponseWrapper
      include Util::Model
      include ResponseHandler

      # Creates an instance of ResponseWrapper
      def initialize
        @appointment_preferences = nil
        @key_modified = Hash.new
      end

        # The method to get the appointment_preferences
        # @return An instance of AppointmentPreference

      def appointment_preferences
        @appointment_preferences
      end

        # The method to set the value to appointment_preferences
        # @param appointment_preferences [AppointmentPreference] An instance of AppointmentPreference

      def appointment_preferences=(appointment_preferences)
        if appointment_preferences!=nil and !appointment_preferences.is_a? AppointmentPreference
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: appointment_preferences EXPECTED TYPE: AppointmentPreference', nil, nil)
        end
        @appointment_preferences = appointment_preferences
        @key_modified['appointment_preferences'] = 1
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
