require_relative '../param'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module PickListValues
    class PickListValuesOperations

        # Creates an instance of PickListValuesOperations with the given parameters
        # @param field_id [Integer] A Integer
        # @param module_1 [String] A String
      def initialize(field_id, module_1=nil)
        if !field_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_id EXPECTED TYPE: Integer', nil, nil)
        end
        if module_1!=nil and !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        @field_id = field_id
        @module_1 = module_1
      end

        # The method to get pick list values
        # @return An instance of APIResponse
      # @raise SDKException
      def get_pick_list_values
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/settings/fields/'
        api_path = api_path + @field_id.to_s
        api_path = api_path + '/pick_list_values'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.PickListValues.GetPickListValuesParam'), @module_1)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

      class GetPickListValuesParam
      end

    end
  end
end
