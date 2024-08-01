require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module CancelMeetings
    class CancelMeetingsOperations

        # Creates an instance of CancelMeetingsOperations with the given parameters
        # @param event [Integer] A Integer
      def initialize(event)
        if !event.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: event EXPECTED TYPE: Integer', nil, nil)
        end
        @event = event
      end

        # The method to cancel meetings
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def cancel_meetings(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Events/'
        api_path = api_path + @event.to_s
        api_path = api_path + '/actions/cancel'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'ACTION'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

    end
  end
end
