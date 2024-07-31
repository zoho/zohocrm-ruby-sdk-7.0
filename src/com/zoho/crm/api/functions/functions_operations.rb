require_relative '../header'
require_relative '../header_map'
require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module Functions
    class FunctionsOperations

        # Creates an instance of FunctionsOperations with the given parameters
        # @param function_name [String] A String
        # @param auth_type [String] A String
        # @param arguments [Hash] An instance of Hash
      def initialize(function_name, auth_type=nil, arguments=nil)
        if !function_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: function_name EXPECTED TYPE: String', nil, nil)
        end
        if auth_type!=nil and !auth_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: auth_type EXPECTED TYPE: String', nil, nil)
        end
        if arguments!=nil and !arguments.is_a? Hash
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: arguments EXPECTED TYPE: Hash', nil, nil)
        end
        @function_name = function_name
        @auth_type = auth_type
        @arguments = arguments
      end

        # The method to execute function using request body
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def execute_function_using_request_body(request, param_instance=nil, header_instance=nil)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/functions/'
        api_path = api_path + @function_name.to_s
        api_path = api_path + '/actions/execute'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_param(Param.new('auth_type', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingRequestBodyParam'), @auth_type)
        handler_instance.add_param(Param.new('arguments', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingRequestBodyParam'), @arguments)
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        require_relative 'response_wrapper'
        handler_instance.api_call(ResponseWrapper.name, 'application/json')
      end

        # The method to execute function using parameters
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def execute_function_using_parameters(param_instance=nil, header_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/functions/'
        api_path = api_path + @function_name.to_s
        api_path = api_path + '/actions/execute'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.add_param(Param.new('auth_type', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingParametersParam'), @auth_type)
        handler_instance.add_param(Param.new('arguments', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingParametersParam'), @arguments)
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        require_relative 'response_wrapper'
        handler_instance.api_call(ResponseWrapper.name, 'application/json')
      end

        # The method to execute function using file
        # @param request [FileBodyWrapper] An instance of FileBodyWrapper
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def execute_function_using_file(request, param_instance=nil, header_instance=nil)
        if request!=nil and !request.is_a? FileBodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: FileBodyWrapper', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/functions/'
        api_path = api_path + @function_name.to_s
        api_path = api_path + '/actions/execute'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'multipart/form-data'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.add_param(Param.new('auth_type', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingFileParam'), @auth_type)
        handler_instance.add_param(Param.new('arguments', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingFileParam'), @arguments)
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        require_relative 'response_wrapper'
        handler_instance.api_call(ResponseWrapper.name, 'application/json')
      end

      class ExecuteFunctionUsingRequestBodyParam
          @@custom_functions_param =   Param.new('custom_functions_param', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingRequestBodyParam')
        def self.custom_functions_param
          @@custom_functions_param
        end
      end

      class ExecuteFunctionUsingRequestBodyHeader
          @@custom_functions_header =   Header.new('custom_functions_header', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingRequestBodyHeader')
        def self.custom_functions_header
          @@custom_functions_header
        end
      end

      class ExecuteFunctionUsingParametersParam
          @@get_custom_functions_param =   Param.new('get_custom_functions_param', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingParametersParam')
        def self.get_custom_functions_param
          @@get_custom_functions_param
        end
      end

      class ExecuteFunctionUsingParametersHeader
          @@get_custom_functions_header =   Header.new('get_custom_functions_header', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingParametersHeader')
        def self.get_custom_functions_header
          @@get_custom_functions_header
        end
      end

      class ExecuteFunctionUsingFileParam
          @@upload_file_param =   Param.new('upload_file_param', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingFileParam')
        def self.upload_file_param
          @@upload_file_param
        end
      end

      class ExecuteFunctionUsingFileHeader
          @@upload_file_header =   Header.new('upload_file_header', 'com.zoho.crm.api.Functions.ExecuteFunctionUsingFileHeader')
        def self.upload_file_header
          @@upload_file_header
        end
      end

    end
  end
end
