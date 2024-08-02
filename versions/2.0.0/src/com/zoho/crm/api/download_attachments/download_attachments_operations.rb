require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module DownloadAttachments
    class DownloadAttachmentsOperations

      # Creates an instance of DownloadAttachmentsOperations
      def initialize
      end

        # The method to get download attachments details
        # @param record_id [Integer] A Integer
        # @param module_1 [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_download_attachments_details(record_id, module_1, param_instance=nil)
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
        api_path = api_path + '/Emails/actions/download_attachments'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'multipart/form-data')
      end

      class GetDownloadAttachmentsDetailsParam
          @@user_id =   Param.new('user_id', 'com.zoho.crm.api.DownloadAttachments.GetDownloadAttachmentsDetailsParam')
        def self.user_id
          @@user_id
        end
          @@message_id =   Param.new('message_id', 'com.zoho.crm.api.DownloadAttachments.GetDownloadAttachmentsDetailsParam')
        def self.message_id
          @@message_id
        end
          @@id =   Param.new('id', 'com.zoho.crm.api.DownloadAttachments.GetDownloadAttachmentsDetailsParam')
        def self.id
          @@id
        end
          @@name =   Param.new('name', 'com.zoho.crm.api.DownloadAttachments.GetDownloadAttachmentsDetailsParam')
        def self.name
          @@name
        end
      end

    end
  end
end
