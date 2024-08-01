require_relative '../util/model'

module ZOHOCRMSDK
  module Backup
    class History
      include Util::Model

      # Creates an instance of History
      def initialize
        @id = nil
        @log_time = nil
        @action = nil
        @repeat_type = nil
        @count = nil
        @file_name = nil
        @state = nil
        @done_by = nil
        @key_modified = Hash.new
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

        # The method to get the log_time
        # @return An instance of DateTime

      def log_time
        @log_time
      end

        # The method to set the value to log_time
        # @param log_time [DateTime] An instance of DateTime

      def log_time=(log_time)
        if log_time!=nil and !log_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: log_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @log_time = log_time
        @key_modified['log_time'] = 1
      end

        # The method to get the action
        # @return A String value

      def action
        @action
      end

        # The method to set the value to action
        # @param action [String] A String

      def action=(action)
        if action!=nil and !action.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: action EXPECTED TYPE: String', nil, nil)
        end
        @action = action
        @key_modified['action'] = 1
      end

        # The method to get the repeat_type
        # @return A String value

      def repeat_type
        @repeat_type
      end

        # The method to set the value to repeat_type
        # @param repeat_type [String] A String

      def repeat_type=(repeat_type)
        if repeat_type!=nil and !repeat_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: repeat_type EXPECTED TYPE: String', nil, nil)
        end
        @repeat_type = repeat_type
        @key_modified['repeat_type'] = 1
      end

        # The method to get the count
        # @return A Integer value

      def count
        @count
      end

        # The method to set the value to count
        # @param count [Integer] A Integer

      def count=(count)
        if count!=nil and !count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: count EXPECTED TYPE: Integer', nil, nil)
        end
        @count = count
        @key_modified['count'] = 1
      end

        # The method to get the file_name
        # @return A String value

      def file_name
        @file_name
      end

        # The method to set the value to file_name
        # @param file_name [String] A String

      def file_name=(file_name)
        if file_name!=nil and !file_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_name EXPECTED TYPE: String', nil, nil)
        end
        @file_name = file_name
        @key_modified['file_name'] = 1
      end

        # The method to get the state
        # @return A String value

      def state
        @state
      end

        # The method to set the value to state
        # @param state [String] A String

      def state=(state)
        if state!=nil and !state.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: String', nil, nil)
        end
        @state = state
        @key_modified['state'] = 1
      end

        # The method to get the done_by
        # @return An instance of Requester

      def done_by
        @done_by
      end

        # The method to set the value to done_by
        # @param done_by [Requester] An instance of Requester

      def done_by=(done_by)
        if done_by!=nil and !done_by.is_a? Requester
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: done_by EXPECTED TYPE: Requester', nil, nil)
        end
        @done_by = done_by
        @key_modified['done_by'] = 1
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
