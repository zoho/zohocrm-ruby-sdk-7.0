require_relative '../util/model'

module ZOHOCRMSDK
  module Backup
    class Backup
      include Util::Model

      # Creates an instance of Backup
      def initialize
        @rrule = nil
        @id = nil
        @start_date = nil
        @scheduled_date = nil
        @status = nil
        @requester = nil
        @key_modified = Hash.new
      end

        # The method to get the rrule
        # @return A String value

      def rrule
        @rrule
      end

        # The method to set the value to rrule
        # @param rrule [String] A String

      def rrule=(rrule)
        if rrule!=nil and !rrule.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rrule EXPECTED TYPE: String', nil, nil)
        end
        @rrule = rrule
        @key_modified['rrule'] = 1
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

        # The method to get the start_date
        # @return An instance of DateTime

      def start_date
        @start_date
      end

        # The method to set the value to start_date
        # @param start_date [DateTime] An instance of DateTime

      def start_date=(start_date)
        if start_date!=nil and !start_date.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: start_date EXPECTED TYPE: DateTime', nil, nil)
        end
        @start_date = start_date
        @key_modified['start_date'] = 1
      end

        # The method to get the scheduled_date
        # @return An instance of DateTime

      def scheduled_date
        @scheduled_date
      end

        # The method to set the value to scheduled_date
        # @param scheduled_date [DateTime] An instance of DateTime

      def scheduled_date=(scheduled_date)
        if scheduled_date!=nil and !scheduled_date.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: scheduled_date EXPECTED TYPE: DateTime', nil, nil)
        end
        @scheduled_date = scheduled_date
        @key_modified['scheduled_date'] = 1
      end

        # The method to get the status
        # @return A String value

      def status
        @status
      end

        # The method to set the value to status
        # @param status [String] A String

      def status=(status)
        if status!=nil and !status.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: String', nil, nil)
        end
        @status = status
        @key_modified['status'] = 1
      end

        # The method to get the requester
        # @return An instance of Requester

      def requester
        @requester
      end

        # The method to set the value to requester
        # @param requester [Requester] An instance of Requester

      def requester=(requester)
        if requester!=nil and !requester.is_a? Requester
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: requester EXPECTED TYPE: Requester', nil, nil)
        end
        @requester = requester
        @key_modified['requester'] = 1
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
