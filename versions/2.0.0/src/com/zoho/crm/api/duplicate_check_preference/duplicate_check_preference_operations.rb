require_relative '../param'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module DuplicateCheckPreference
    class DuplicateCheckPreferenceOperations

        # Creates an instance of DuplicateCheckPreferenceOperations with the given parameters
        # @param module_1 [String] A String
      def initialize(module_1=nil)
        if module_1!=nil and !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        @module_1 = module_1
      end

        # The method to get duplicate check preference
        # @return An instance of APIResponse
      # @raise SDKException
      def get_duplicate_check_preference
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/duplicate_check_preference'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.DuplicateCheckPreference.GetDuplicateCheckPreferenceParam'), @module_1)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to create duplicate check preference
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def create_duplicate_check_preference(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/duplicate_check_preference'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.DuplicateCheckPreference.CreateDuplicateCheckPreferenceParam'), @module_1)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to update duplicate check preference
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_duplicate_check_preference(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/duplicate_check_preference'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.DuplicateCheckPreference.UpdateDuplicateCheckPreferenceParam'), @module_1)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete duplicate check preference
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_duplicate_check_preference
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/duplicate_check_preference'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.DuplicateCheckPreference.DeleteDuplicateCheckPreferenceParam'), @module_1)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetDuplicateCheckPreferenceParam
      end

      class CreateDuplicateCheckPreferenceParam
      end

      class UpdateDuplicateCheckPreferenceParam
      end

      class DeleteDuplicateCheckPreferenceParam
      end

    end
  end
end
