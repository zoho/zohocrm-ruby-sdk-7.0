require_relative '../util/model'

module ZOHOCRMSDK
  module CadencesExecution
    class AnalyticsTask
      include Util::Model

      # Creates an instance of AnalyticsTask
      def initialize
        @open_tasks_count = nil
        @failed_tasks_count = nil
        @subject = nil
        @completed_tasks_count = nil
        @created_tasks_count = nil
        @tasks_count = nil
        @key_modified = Hash.new
      end

        # The method to get the open_tasks_count
        # @return A Integer value

      def open_tasks_count
        @open_tasks_count
      end

        # The method to set the value to open_tasks_count
        # @param open_tasks_count [Integer] A Integer

      def open_tasks_count=(open_tasks_count)
        if open_tasks_count!=nil and !open_tasks_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: open_tasks_count EXPECTED TYPE: Integer', nil, nil)
        end
        @open_tasks_count = open_tasks_count
        @key_modified['open_tasks_count'] = 1
      end

        # The method to get the failed_tasks_count
        # @return A Integer value

      def failed_tasks_count
        @failed_tasks_count
      end

        # The method to set the value to failed_tasks_count
        # @param failed_tasks_count [Integer] A Integer

      def failed_tasks_count=(failed_tasks_count)
        if failed_tasks_count!=nil and !failed_tasks_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: failed_tasks_count EXPECTED TYPE: Integer', nil, nil)
        end
        @failed_tasks_count = failed_tasks_count
        @key_modified['failed_tasks_count'] = 1
      end

        # The method to get the subject
        # @return A String value

      def subject
        @subject
      end

        # The method to set the value to subject
        # @param subject [String] A String

      def subject=(subject)
        if subject!=nil and !subject.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: subject EXPECTED TYPE: String', nil, nil)
        end
        @subject = subject
        @key_modified['subject'] = 1
      end

        # The method to get the completed_tasks_count
        # @return A Integer value

      def completed_tasks_count
        @completed_tasks_count
      end

        # The method to set the value to completed_tasks_count
        # @param completed_tasks_count [Integer] A Integer

      def completed_tasks_count=(completed_tasks_count)
        if completed_tasks_count!=nil and !completed_tasks_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: completed_tasks_count EXPECTED TYPE: Integer', nil, nil)
        end
        @completed_tasks_count = completed_tasks_count
        @key_modified['completed_tasks_count'] = 1
      end

        # The method to get the created_tasks_count
        # @return A Integer value

      def created_tasks_count
        @created_tasks_count
      end

        # The method to set the value to created_tasks_count
        # @param created_tasks_count [Integer] A Integer

      def created_tasks_count=(created_tasks_count)
        if created_tasks_count!=nil and !created_tasks_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_tasks_count EXPECTED TYPE: Integer', nil, nil)
        end
        @created_tasks_count = created_tasks_count
        @key_modified['created_tasks_count'] = 1
      end

        # The method to get the tasks_count
        # @return A Integer value

      def tasks_count
        @tasks_count
      end

        # The method to set the value to tasks_count
        # @param tasks_count [Integer] A Integer

      def tasks_count=(tasks_count)
        if tasks_count!=nil and !tasks_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tasks_count EXPECTED TYPE: Integer', nil, nil)
        end
        @tasks_count = tasks_count
        @key_modified['tasks_count'] = 1
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
