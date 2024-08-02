require_relative '../util/model'

module ZOHOCRMSDK
  module CadencesExecution
    class AnalyticsCall
      include Util::Model

      # Creates an instance of AnalyticsCall
      def initialize
        @created_calls_count = nil
        @cancelled_calls_count = nil
        @failed_calls_count = nil
        @completed_calls_count = nil
        @scheduled_calls_count = nil
        @calls_count = nil
        @overdue_calls_count = nil
        @missed_calls_count = nil
        @key_modified = Hash.new
      end

        # The method to get the created_calls_count
        # @return A Integer value

      def created_calls_count
        @created_calls_count
      end

        # The method to set the value to created_calls_count
        # @param created_calls_count [Integer] A Integer

      def created_calls_count=(created_calls_count)
        if created_calls_count!=nil and !created_calls_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_calls_count EXPECTED TYPE: Integer', nil, nil)
        end
        @created_calls_count = created_calls_count
        @key_modified['created_calls_count'] = 1
      end

        # The method to get the cancelled_calls_count
        # @return A Integer value

      def cancelled_calls_count
        @cancelled_calls_count
      end

        # The method to set the value to cancelled_calls_count
        # @param cancelled_calls_count [Integer] A Integer

      def cancelled_calls_count=(cancelled_calls_count)
        if cancelled_calls_count!=nil and !cancelled_calls_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cancelled_calls_count EXPECTED TYPE: Integer', nil, nil)
        end
        @cancelled_calls_count = cancelled_calls_count
        @key_modified['cancelled_calls_count'] = 1
      end

        # The method to get the failed_calls_count
        # @return A Integer value

      def failed_calls_count
        @failed_calls_count
      end

        # The method to set the value to failed_calls_count
        # @param failed_calls_count [Integer] A Integer

      def failed_calls_count=(failed_calls_count)
        if failed_calls_count!=nil and !failed_calls_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: failed_calls_count EXPECTED TYPE: Integer', nil, nil)
        end
        @failed_calls_count = failed_calls_count
        @key_modified['failed_calls_count'] = 1
      end

        # The method to get the completed_calls_count
        # @return A Integer value

      def completed_calls_count
        @completed_calls_count
      end

        # The method to set the value to completed_calls_count
        # @param completed_calls_count [Integer] A Integer

      def completed_calls_count=(completed_calls_count)
        if completed_calls_count!=nil and !completed_calls_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: completed_calls_count EXPECTED TYPE: Integer', nil, nil)
        end
        @completed_calls_count = completed_calls_count
        @key_modified['completed_calls_count'] = 1
      end

        # The method to get the scheduled_calls_count
        # @return A Integer value

      def scheduled_calls_count
        @scheduled_calls_count
      end

        # The method to set the value to scheduled_calls_count
        # @param scheduled_calls_count [Integer] A Integer

      def scheduled_calls_count=(scheduled_calls_count)
        if scheduled_calls_count!=nil and !scheduled_calls_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: scheduled_calls_count EXPECTED TYPE: Integer', nil, nil)
        end
        @scheduled_calls_count = scheduled_calls_count
        @key_modified['scheduled_calls_count'] = 1
      end

        # The method to get the calls_count
        # @return A Integer value

      def calls_count
        @calls_count
      end

        # The method to set the value to calls_count
        # @param calls_count [Integer] A Integer

      def calls_count=(calls_count)
        if calls_count!=nil and !calls_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: calls_count EXPECTED TYPE: Integer', nil, nil)
        end
        @calls_count = calls_count
        @key_modified['calls_count'] = 1
      end

        # The method to get the overdue_calls_count
        # @return A Integer value

      def overdue_calls_count
        @overdue_calls_count
      end

        # The method to set the value to overdue_calls_count
        # @param overdue_calls_count [Integer] A Integer

      def overdue_calls_count=(overdue_calls_count)
        if overdue_calls_count!=nil and !overdue_calls_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: overdue_calls_count EXPECTED TYPE: Integer', nil, nil)
        end
        @overdue_calls_count = overdue_calls_count
        @key_modified['overdue_calls_count'] = 1
      end

        # The method to get the missed_calls_count
        # @return A Integer value

      def missed_calls_count
        @missed_calls_count
      end

        # The method to set the value to missed_calls_count
        # @param missed_calls_count [Integer] A Integer

      def missed_calls_count=(missed_calls_count)
        if missed_calls_count!=nil and !missed_calls_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: missed_calls_count EXPECTED TYPE: Integer', nil, nil)
        end
        @missed_calls_count = missed_calls_count
        @key_modified['missed_calls_count'] = 1
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
