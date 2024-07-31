require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module SendMail
    class SendMailOperations

        # Creates an instance of SendMailOperations with the given parameters
        # @param id [Integer] A Integer
        # @param modulename [String] A String
      def initialize(id, modulename)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if !modulename.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modulename EXPECTED TYPE: String', nil, nil)
        end
        @id = id
        @modulename = modulename
      end

        # The method to send mail
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def send_mail(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @modulename.to_s
        api_path = api_path + '/'
        api_path = api_path + @id.to_s
        api_path = api_path + '/actions/send_mail'
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
