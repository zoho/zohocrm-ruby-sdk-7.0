require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/utility'
require_relative '../util/constants'

module ZOHOCRMSDK
  module RecordLocking
    class RecordLockingOperations

        # Creates an instance of RecordLockingOperations with the given parameters
        # @param record_id [Integer] A Integer
        # @param module_name [String] A String
      def initialize(record_id, module_name)
        if !record_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
        end
        if !module_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_name EXPECTED TYPE: String', nil, nil)
        end
        @record_id = record_id
        @module_name = module_name
      end

        # The method to get record locking informations
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_record_locking_informations(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_name.to_s
        api_path = api_path + '/'
        api_path = api_path + @record_id.to_s
        api_path = api_path + '/Locking_Information__s'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.module_api_name = "Locking_Information__s"
        Util::Utility.get_fields("Locking_Information__s", handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to lock records
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def lock_records(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_name.to_s
        api_path = api_path + '/'
        api_path = api_path + @record_id.to_s
        api_path = api_path + '/Locking_Information__s'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.module_api_name = "Locking_Information__s"
        Util::Utility.get_fields("Locking_Information__s", handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get record locking information
        # @param lock_id [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_record_locking_information(lock_id, param_instance=nil)
        if !lock_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lock_id EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_name.to_s
        api_path = api_path + '/'
        api_path = api_path + @record_id.to_s
        api_path = api_path + '/Locking_Information__s/'
        api_path = api_path + lock_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.module_api_name = "Locking_Information__s"
        Util::Utility.get_fields("Locking_Information__s", handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update record locking information
        # @param lock_id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_record_locking_information(lock_id, request)
        if !lock_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lock_id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_name.to_s
        api_path = api_path + '/'
        api_path = api_path + @record_id.to_s
        api_path = api_path + '/Locking_Information__s/'
        api_path = api_path + lock_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.module_api_name = "Locking_Information__s"
        Util::Utility.get_fields("Locking_Information__s", handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to unlock record
        # @param lock_id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def unlock_record(lock_id)
        if !lock_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lock_id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_name.to_s
        api_path = api_path + '/'
        api_path = api_path + @record_id.to_s
        api_path = api_path + '/Locking_Information__s/'
        api_path = api_path + lock_id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.module_api_name = "Locking_Information__s"
        Util::Utility.get_fields("Locking_Information__s", handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetRecordLockingInformationsParam
          @@fields =   Param.new('fields', 'com.zoho.crm.api.RecordLocking.GetRecordLockingInformationsParam')
        def self.fields
          @@fields
        end
          @@ids =   Param.new('ids', 'com.zoho.crm.api.RecordLocking.GetRecordLockingInformationsParam')
        def self.ids
          @@ids
        end
      end

      class GetRecordLockingInformationParam
          @@fields =   Param.new('fields', 'com.zoho.crm.api.RecordLocking.GetRecordLockingInformationParam')
        def self.fields
          @@fields
        end
      end

    end
  end
end
