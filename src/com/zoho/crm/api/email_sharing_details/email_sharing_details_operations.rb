require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module EmailSharingDetails
    class EmailSharingDetailsOperations

        # Creates an instance of EmailSharingDetailsOperations with the given parameters
        # @param record_id [Integer] A Integer
        # @param module_1 [String] A String
      def initialize(record_id, module_1)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        @record_id = record_id
        @module_1 = module_1
      end

        # The method to get email sharing details
        # @return An instance of APIResponse
      # @raise SDKException
      def get_email_sharing_details
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + @record_id.to_s
        api_path = api_path + '/__emails_sharing_details'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

    end
  end
end
