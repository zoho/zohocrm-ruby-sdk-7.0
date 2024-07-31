require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module MailMerge
    class MailMergeOperations

        # Creates an instance of MailMergeOperations with the given parameters
        # @param module_1 [String] A String
        # @param id [String] A String
      def initialize(module_1, id)
        if !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        if !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        @module_1 = module_1
        @id = id
      end

        # The method to send mail merge
        # @param request [MailMergeWrapper] An instance of MailMergeWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def send_mail_merge(request)
        if request!=nil and !request.is_a? MailMergeWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: MailMergeWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + @id.to_s
        api_path = api_path + '/actions/send_mail_merge'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to download mail merge
        # @param request [DownloadMailMergeWrapper] An instance of DownloadMailMergeWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def download_mail_merge(request)
        if request!=nil and !request.is_a? DownloadMailMergeWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: DownloadMailMergeWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + @id.to_s
        api_path = api_path + '/actions/download_mail_merge'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'download_response_handler'
        handler_instance.api_call(DownloadResponseHandler.name, 'application/json')
      end

        # The method to sign mail merge
        # @param request [SignMailMergeWrapper] An instance of SignMailMergeWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def sign_mail_merge(request)
        if request!=nil and !request.is_a? SignMailMergeWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: SignMailMergeWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_1.to_s
        api_path = api_path + '/'
        api_path = api_path + @id.to_s
        api_path = api_path + '/actions/sign_mail_merge'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'sign_action_handler'
        handler_instance.api_call(SignActionHandler.name, 'application/json')
      end

    end
  end
end
