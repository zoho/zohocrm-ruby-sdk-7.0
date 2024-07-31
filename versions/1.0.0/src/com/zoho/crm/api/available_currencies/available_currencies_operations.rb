require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module AvailableCurrencies
    class AvailableCurrenciesOperations

      # Creates an instance of AvailableCurrenciesOperations
      def initialize
      end

        # The method to get available currencies
        # @return An instance of APIResponse
      # @raise SDKException
      def get_available_currencies
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/org/currencies/actions/available_currencies'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

    end
  end
end
