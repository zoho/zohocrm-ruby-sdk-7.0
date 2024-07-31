require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module MassDeleteTags
    require_relative 'status_action_response'
    class MassDeleteDetails
      include Util::Model
      include StatusActionResponse

      # Creates an instance of MassDeleteDetails
      def initialize
        @job_id = nil
        @total_count = nil
        @failed_count = nil
        @deleted_count = nil
        @status = nil
        @key_modified = Hash.new
      end

        # The method to get the job_id
        # @return A Integer value

      def job_id
        @job_id
      end

        # The method to set the value to job_id
        # @param job_id [Integer] A Integer

      def job_id=(job_id)
        if job_id!=nil and !job_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: job_id EXPECTED TYPE: Integer', nil, nil)
        end
        @job_id = job_id
        @key_modified['job_id'] = 1
      end

        # The method to get the total_count
        # @return A Integer value

      def total_count
        @total_count
      end

        # The method to set the value to total_count
        # @param total_count [Integer] A Integer

      def total_count=(total_count)
        if total_count!=nil and !total_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: total_count EXPECTED TYPE: Integer', nil, nil)
        end
        @total_count = total_count
        @key_modified['total_count'] = 1
      end

        # The method to get the failed_count
        # @return A Integer value

      def failed_count
        @failed_count
      end

        # The method to set the value to failed_count
        # @param failed_count [Integer] A Integer

      def failed_count=(failed_count)
        if failed_count!=nil and !failed_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: failed_count EXPECTED TYPE: Integer', nil, nil)
        end
        @failed_count = failed_count
        @key_modified['failed_count'] = 1
      end

        # The method to get the deleted_count
        # @return A Integer value

      def deleted_count
        @deleted_count
      end

        # The method to set the value to deleted_count
        # @param deleted_count [Integer] A Integer

      def deleted_count=(deleted_count)
        if deleted_count!=nil and !deleted_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deleted_count EXPECTED TYPE: Integer', nil, nil)
        end
        @deleted_count = deleted_count
        @key_modified['deleted_count'] = 1
      end

        # The method to get the status
        # @return An instance of Util::Choice

      def status
        @status
      end

        # The method to set the value to status
        # @param status [Util::Choice] An instance of Util::Choice

      def status=(status)
        if status!=nil and !status.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @status = status
        @key_modified['status'] = 1
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
