require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module AssociateEmail
    class AssociateEmailOperations

      # Creates an instance of AssociateEmailOperations
      def initialize
      end

        # The method to associate 
        # @param recordid [Integer] A Integer
        # @param module_1 [String] A String
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def associate(recordid, module_1, request)
        if !recordid.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: recordid EXPECTED TYPE: Integer', nil, nil)
        end
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + recordid.to_s
        api_path = api_path + '/actions/associate_email'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

    end
  end
end
