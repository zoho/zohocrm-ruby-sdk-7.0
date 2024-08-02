require_relative '../param'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module APIs
    class APIsOperations

        # Creates an instance of ApisOperations with the given parameters
        # @param filters [String] A String
      def initialize(filters=nil)
        if filters!=nil and !filters.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: filters EXPECTED TYPE: String', nil, nil)
        end
        @filters = filters
      end

        # The method to get supported api
        # @return An instance of APIResponse
      # @raise SDKException
      def get_supported_api
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/__apis'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('filters', 'com.zoho.crm.api.Apis.GetSupportedAPIParam'), @filters)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

      class GetSupportedAPIParam
      end

    end
  end
end
