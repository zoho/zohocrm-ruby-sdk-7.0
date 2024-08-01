require_relative '../param'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module FieldAttachments
    class FieldAttachmentsOperations

        # Creates an instance of FieldAttachmentsOperations with the given parameters
        # @param module_api_name [String] A String
        # @param record_id [Integer] A Integer
        # @param fields_attachment_id [Integer] A Integer
      def initialize(module_api_name, record_id, fields_attachment_id=nil)
        if !module_api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
        end
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if fields_attachment_id!=nil and !fields_attachment_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields_attachment_id EXPECTED TYPE: Integer', nil, nil)
        end
        @module_api_name = module_api_name
        @record_id = record_id
        @fields_attachment_id = fields_attachment_id
      end

        # The method to get field attachments
        # @return An instance of APIResponse
      # @raise SDKException
      def get_field_attachments
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + @record_id.to_s
        api_path = api_path + '/actions/download_fields_attachment'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('fields_attachment_id', 'com.zoho.crm.api.FieldAttachments.GetFieldAttachmentsParam'), @fields_attachment_id)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/x-download')
      end

      class GetFieldAttachmentsParam
      end

    end
  end
end
