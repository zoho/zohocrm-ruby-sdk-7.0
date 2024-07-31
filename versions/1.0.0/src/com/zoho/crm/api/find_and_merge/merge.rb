require_relative '../util/model'

module ZOHOCRMSDK
  module FindAndMerge
    class Merge
      include Util::Model

      # Creates an instance of Merge
      def initialize
        @job_id = nil
        @status = nil
        @data = nil
        @master_record_fields = nil
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

        # The method to get the data
        # @return An instance of Array

      def data
        @data
      end

        # The method to set the value to data
        # @param data [Array] An instance of Array

      def data=(data)
        if data!=nil and !data.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data EXPECTED TYPE: Array', nil, nil)
        end
        @data = data
        @key_modified['data'] = 1
      end

        # The method to get the master_record_fields
        # @return An instance of Array

      def master_record_fields
        @master_record_fields
      end

        # The method to set the value to master_record_fields
        # @param master_record_fields [Array] An instance of Array

      def master_record_fields=(master_record_fields)
        if master_record_fields!=nil and !master_record_fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: master_record_fields EXPECTED TYPE: Array', nil, nil)
        end
        @master_record_fields = master_record_fields
        @key_modified['master_record_fields'] = 1
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
