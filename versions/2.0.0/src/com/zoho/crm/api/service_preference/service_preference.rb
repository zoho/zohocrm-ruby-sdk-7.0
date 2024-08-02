require_relative '../util/model'

module ZOHOCRMSDK
  module ServicePreference
    class ServicePreference
      include Util::Model

      # Creates an instance of ServicePreference
      def initialize
        @job_sheet_enabled = nil
        @key_modified = Hash.new
      end

        # The method to get the job_sheet_enabled
        # @return A Boolean value

      def job_sheet_enabled
        @job_sheet_enabled
      end

        # The method to set the value to job_sheet_enabled
        # @param job_sheet_enabled [Boolean] A Boolean

      def job_sheet_enabled=(job_sheet_enabled)
        if job_sheet_enabled!=nil and ! [true, false].include?job_sheet_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: job_sheet_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @job_sheet_enabled = job_sheet_enabled
        @key_modified['job_sheet_enabled'] = 1
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
