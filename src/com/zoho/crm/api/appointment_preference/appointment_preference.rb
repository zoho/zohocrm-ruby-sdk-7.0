require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module AppointmentPreference
    class AppointmentPreference
      include Util::Model

      # Creates an instance of AppointmentPreference
      def initialize
        @show_job_sheet = nil
        @when_duration_exceeds = nil
        @when_appointment_completed = nil
        @allow_booking_outside_service_availability = nil
        @allow_booking_outside_businesshours = nil
        @deal_record_configuration = nil
        @key_modified = Hash.new
      end

        # The method to get the show_job_sheet
        # @return A Boolean value

      def show_job_sheet
        @show_job_sheet
      end

        # The method to set the value to show_job_sheet
        # @param show_job_sheet [Boolean] A Boolean

      def show_job_sheet=(show_job_sheet)
        if show_job_sheet!=nil and ! [true, false].include?show_job_sheet
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show_job_sheet EXPECTED TYPE: Boolean', nil, nil)
        end
        @show_job_sheet = show_job_sheet
        @key_modified['show_job_sheet'] = 1
      end

        # The method to get the when_duration_exceeds
        # @return A String value

      def when_duration_exceeds
        @when_duration_exceeds
      end

        # The method to set the value to when_duration_exceeds
        # @param when_duration_exceeds [String] A String

      def when_duration_exceeds=(when_duration_exceeds)
        if when_duration_exceeds!=nil and !when_duration_exceeds.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: when_duration_exceeds EXPECTED TYPE: String', nil, nil)
        end
        @when_duration_exceeds = when_duration_exceeds
        @key_modified['when_duration_exceeds'] = 1
      end

        # The method to get the when_appointment_completed
        # @return An instance of Util::Choice

      def when_appointment_completed
        @when_appointment_completed
      end

        # The method to set the value to when_appointment_completed
        # @param when_appointment_completed [Util::Choice] An instance of Util::Choice

      def when_appointment_completed=(when_appointment_completed)
        if when_appointment_completed!=nil and !when_appointment_completed.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: when_appointment_completed EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @when_appointment_completed = when_appointment_completed
        @key_modified['when_appointment_completed'] = 1
      end

        # The method to get the allow_booking_outside_service_availability
        # @return A Boolean value

      def allow_booking_outside_service_availability
        @allow_booking_outside_service_availability
      end

        # The method to set the value to allow_booking_outside_service_availability
        # @param allow_booking_outside_service_availability [Boolean] A Boolean

      def allow_booking_outside_service_availability=(allow_booking_outside_service_availability)
        if allow_booking_outside_service_availability!=nil and ! [true, false].include?allow_booking_outside_service_availability
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: allow_booking_outside_service_availability EXPECTED TYPE: Boolean', nil, nil)
        end
        @allow_booking_outside_service_availability = allow_booking_outside_service_availability
        @key_modified['allow_booking_outside_service_availability'] = 1
      end

        # The method to get the allow_booking_outside_businesshours
        # @return A Boolean value

      def allow_booking_outside_businesshours
        @allow_booking_outside_businesshours
      end

        # The method to set the value to allow_booking_outside_businesshours
        # @param allow_booking_outside_businesshours [Boolean] A Boolean

      def allow_booking_outside_businesshours=(allow_booking_outside_businesshours)
        if allow_booking_outside_businesshours!=nil and ! [true, false].include?allow_booking_outside_businesshours
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: allow_booking_outside_businesshours EXPECTED TYPE: Boolean', nil, nil)
        end
        @allow_booking_outside_businesshours = allow_booking_outside_businesshours
        @key_modified['allow_booking_outside_businesshours'] = 1
      end

        # The method to get the deal_record_configuration
        # @return An instance of DealRecordConfiguration

      def deal_record_configuration
        @deal_record_configuration
      end

        # The method to set the value to deal_record_configuration
        # @param deal_record_configuration [DealRecordConfiguration] An instance of DealRecordConfiguration

      def deal_record_configuration=(deal_record_configuration)
        if deal_record_configuration!=nil and !deal_record_configuration.is_a? DealRecordConfiguration
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deal_record_configuration EXPECTED TYPE: DealRecordConfiguration', nil, nil)
        end
        @deal_record_configuration = deal_record_configuration
        @key_modified['deal_record_configuration'] = 1
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
