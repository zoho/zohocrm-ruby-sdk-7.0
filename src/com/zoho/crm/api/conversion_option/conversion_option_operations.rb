require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/utility'
require_relative '../util/constants'

module ZOHOCRMSDK
  module ConversionOption
    class ConversionOptionOperations

        # Creates an instance of ConversionOptionOperations with the given parameters
        # @param lead_id [Integer] A Integer
      def initialize(lead_id)
        if !lead_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lead_id EXPECTED TYPE: Integer', nil, nil)
        end
        @lead_id = lead_id
      end

        # The method to lead conversion options
        # @return An instance of APIResponse
      # @raise SDKException
      def lead_conversion_options
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Leads/'
        api_path = api_path + @lead_id.to_s
        api_path = api_path + '/__conversion_options'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.module_api_name = "Leads"
        Util::Utility.get_fields("Leads,Contacts,Deals,Accounts", handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

    end
  end
end
