require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module Attachments
    class AttachmentsOperations

      # Creates an instance of AttachmentsOperations
      def initialize
      end

        # The method to upload attachments
        # @param record_id [Integer] A Integer
        # @param module_1 [String] A String
        # @param request [FileBodyWrapper] An instance of FileBodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def upload_attachments(record_id, module_1, request)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        if request!=nil and !request.is_a? FileBodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: FileBodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/Attachments'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'multipart/form-data'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get attachments
        # @param record_id [Integer] A Integer
        # @param module_1 [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_attachments(record_id, module_1, param_instance=nil)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/Attachments'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to upload url attachments
        # @param record_id [Integer] A Integer
        # @param module_1 [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def upload_url_attachments(record_id, module_1, param_instance=nil)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/Attachments'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'ACTION'
        handler_instance.param = param_instance
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete attachments
        # @param record_id [Integer] A Integer
        # @param module_1 [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_attachments(record_id, module_1, param_instance=nil)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/Attachments'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.param = param_instance
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get attachment
        # @param id [Integer] A Integer
        # @param record_id [Integer] A Integer
        # @param module_1 [String] A String
        # @return An instance of APIResponse
      # @raise SDKException
      def get_attachment(id, record_id, module_1)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/Attachments/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'image/png')
      end

        # The method to delete attachment
        # @param id [Integer] A Integer
        # @param record_id [Integer] A Integer
        # @param module_1 [String] A String
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_attachment(id, record_id, module_1)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + record_id.to_s
        api_path = api_path + '/Attachments/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetAttachmentsParam
          @@fields =   Param.new('fields', 'com.zoho.crm.api.Attachments.GetAttachmentsParam')
        def self.fields
          @@fields
        end
          @@ids =   Param.new('ids', 'com.zoho.crm.api.Attachments.GetAttachmentsParam')
        def self.ids
          @@ids
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.Attachments.GetAttachmentsParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.Attachments.GetAttachmentsParam')
        def self.per_page
          @@per_page
        end
      end

      class UploadUrlAttachmentsParam
          @@attachmentUrl =   Param.new('attachmentUrl', 'com.zoho.crm.api.Attachments.UploadUrlAttachmentsParam')
        def self.attachmentUrl
          @@attachmentUrl
        end
          @@title =   Param.new('title', 'com.zoho.crm.api.Attachments.UploadUrlAttachmentsParam')
        def self.title
          @@title
        end
      end

      class DeleteAttachmentsParam
          @@ids =   Param.new('ids', 'com.zoho.crm.api.Attachments.DeleteAttachmentsParam')
        def self.ids
          @@ids
        end
      end

    end
  end
end
