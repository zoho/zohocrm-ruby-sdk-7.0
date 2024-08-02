require_relative '../util/model'

module ZOHOCRMSDK
  module Cadences
    class Summary
      include Util::Model

      # Creates an instance of Summary
      def initialize
        @task_follow_up_count = nil
        @call_follow_up_count = nil
        @email_follow_up_count = nil
        @key_modified = Hash.new
      end

        # The method to get the task_follow_up_count
        # @return A Integer value

      def task_follow_up_count
        @task_follow_up_count
      end

        # The method to set the value to task_follow_up_count
        # @param task_follow_up_count [Integer] A Integer

      def task_follow_up_count=(task_follow_up_count)
        if task_follow_up_count!=nil and !task_follow_up_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: task_follow_up_count EXPECTED TYPE: Integer', nil, nil)
        end
        @task_follow_up_count = task_follow_up_count
        @key_modified['task_follow_up_count'] = 1
      end

        # The method to get the call_follow_up_count
        # @return A Integer value

      def call_follow_up_count
        @call_follow_up_count
      end

        # The method to set the value to call_follow_up_count
        # @param call_follow_up_count [Integer] A Integer

      def call_follow_up_count=(call_follow_up_count)
        if call_follow_up_count!=nil and !call_follow_up_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: call_follow_up_count EXPECTED TYPE: Integer', nil, nil)
        end
        @call_follow_up_count = call_follow_up_count
        @key_modified['call_follow_up_count'] = 1
      end

        # The method to get the email_follow_up_count
        # @return A Integer value

      def email_follow_up_count
        @email_follow_up_count
      end

        # The method to set the value to email_follow_up_count
        # @param email_follow_up_count [Integer] A Integer

      def email_follow_up_count=(email_follow_up_count)
        if email_follow_up_count!=nil and !email_follow_up_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email_follow_up_count EXPECTED TYPE: Integer', nil, nil)
        end
        @email_follow_up_count = email_follow_up_count
        @key_modified['email_follow_up_count'] = 1
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
