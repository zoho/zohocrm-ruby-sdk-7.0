require_relative '../util/model'

module ZOHOCRMSDK
  module AuditLogExport
    class AuditLogExport
      include Util::Model

      # Creates an instance of AuditLogExport
      def initialize
        @criteria = nil
        @id = nil
        @status = nil
        @created_by = nil
        @download_links = nil
        @job_start_time = nil
        @job_end_time = nil
        @expiry_date = nil
        @key_modified = Hash.new
      end

        # The method to get the criteria
        # @return An instance of Criteria

      def criteria
        @criteria
      end

        # The method to set the value to criteria
        # @param criteria [Criteria] An instance of Criteria

      def criteria=(criteria)
        if criteria!=nil and !criteria.is_a? Criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: Criteria', nil, nil)
        end
        @criteria = criteria
        @key_modified['criteria'] = 1
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

        # The method to get the created_by
        # @return An instance of User

      def created_by
        @created_by
      end

        # The method to set the value to created_by
        # @param created_by [User] An instance of User

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: User', nil, nil)
        end
        @created_by = created_by
        @key_modified['created_by'] = 1
      end

        # The method to get the download_links
        # @return An instance of Array

      def download_links
        @download_links
      end

        # The method to set the value to download_links
        # @param download_links [Array] An instance of Array

      def download_links=(download_links)
        if download_links!=nil and !download_links.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: download_links EXPECTED TYPE: Array', nil, nil)
        end
        @download_links = download_links
        @key_modified['download_links'] = 1
      end

        # The method to get the job_start_time
        # @return An instance of DateTime

      def job_start_time
        @job_start_time
      end

        # The method to set the value to job_start_time
        # @param job_start_time [DateTime] An instance of DateTime

      def job_start_time=(job_start_time)
        if job_start_time!=nil and !job_start_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: job_start_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @job_start_time = job_start_time
        @key_modified['job_start_time'] = 1
      end

        # The method to get the job_end_time
        # @return An instance of DateTime

      def job_end_time
        @job_end_time
      end

        # The method to set the value to job_end_time
        # @param job_end_time [DateTime] An instance of DateTime

      def job_end_time=(job_end_time)
        if job_end_time!=nil and !job_end_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: job_end_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @job_end_time = job_end_time
        @key_modified['job_end_time'] = 1
      end

        # The method to get the expiry_date
        # @return An instance of DateTime

      def expiry_date
        @expiry_date
      end

        # The method to set the value to expiry_date
        # @param expiry_date [DateTime] An instance of DateTime

      def expiry_date=(expiry_date)
        if expiry_date!=nil and !expiry_date.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: expiry_date EXPECTED TYPE: DateTime', nil, nil)
        end
        @expiry_date = expiry_date
        @key_modified['expiry_date'] = 1
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
