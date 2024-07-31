require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module MassDeleteTags
    class MassDeleteTagsOperations

      # Creates an instance of MassDeleteTagsOperations
      def initialize
      end

        # The method to mass delete tags
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def mass_delete_tags(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/tags/actions/mass_delete'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'ACTION'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        require_relative 'action_response'
        handler_instance.api_call(ActionResponse.name, 'application/json')
      end

        # The method to get status
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_status(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/tags/actions/mass_delete'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'status_response_handler'
        handler_instance.api_call(StatusResponseHandler.name, 'application/json')
      end

      class GetStatusParam
          @@job_id =   Param.new('job_id', 'com.zoho.crm.api.MassDeleteTags.GetStatusParam')
        def self.job_id
          @@job_id
        end
      end

    end
  end
end
