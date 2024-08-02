require_relative '../util/model'

module ZOHOCRMSDK
  module EmailDrafts
    class ScheduleDetails
      include Util::Model

      # Creates an instance of ScheduleDetails
      def initialize
        @time = nil
        @timezone = nil
        @source = nil
        @key_modified = Hash.new
      end

        # The method to get the time
        # @return An instance of DateTime

      def time
        @time
      end

        # The method to set the value to time
        # @param time [DateTime] An instance of DateTime

      def time=(time)
        if time!=nil and !time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: time EXPECTED TYPE: DateTime', nil, nil)
        end
        @time = time
        @key_modified['time'] = 1
      end

        # The method to get the timezone
        # @return An instance of String

      def timezone
        @timezone
      end

        # The method to set the value to timezone
        # @param timezone [String] An instance of String

      def timezone=(timezone)
        if timezone!=nil and !timezone.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: timezone EXPECTED TYPE: TimeZone', nil, nil)
        end
        @timezone = timezone
        @key_modified['timezone'] = 1
      end

        # The method to get the source
        # @return A String value

      def source
        @source
      end

        # The method to set the value to source
        # @param source [String] A String

      def source=(source)
        if source!=nil and !source.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: source EXPECTED TYPE: String', nil, nil)
        end
        @source = source
        @key_modified['source'] = 1
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
