require_relative '../header'
require_relative '../header_map'
require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/utility'
require_relative '../util/constants'

module ZOHOCRMSDK
  module Record
    class RecordOperations

        # Creates an instance of RecordOperations with the given parameters
        # @param module_api_name [String] A String
      def initialize(module_api_name)
        if !module_api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
        end
        @module_api_name = module_api_name
      end

        # The method to get record
        # @param id [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_record(id, param_instance=nil, header_instance=nil)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update record
        # @param id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def update_record(id, request, header_instance=nil)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.header = header_instance
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete record
        # @param id [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_record(id, param_instance=nil, header_instance=nil)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get records
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_records(param_instance=nil, header_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to create records
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def create_records(request, header_instance=nil)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.header = header_instance
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to update records
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def update_records(request, header_instance=nil)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.header = header_instance
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete records
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_records(param_instance=nil, header_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to upsert records
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def upsert_records(request, header_instance=nil)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/upsert'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'ACTION'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.header = header_instance
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get deleted records
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_deleted_records(param_instance=nil, header_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/deleted'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'deleted_records_handler'
        handler_instance.api_call(DeletedRecordsHandler.name, 'application/json')
      end

        # The method to search records
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def search_records(param_instance=nil, header_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/search'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get photo
        # @param id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_photo(id)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + id.to_s
        api_path = api_path + '/photo'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'download_handler'
        handler_instance.api_call(DownloadHandler.name, 'application/x-download')
      end

        # The method to upload photo
        # @param id [Integer] A Integer
        # @param request [FileBodyWrapper] An instance of FileBodyWrapper
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def upload_photo(id, request, param_instance=nil)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? FileBodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: FileBodyWrapper', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + id.to_s
        api_path = api_path + '/photo'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'multipart/form-data'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.param = param_instance
        Util::Utility.get_fields(@module_api_name, handler_instance)
        Util::Utility.verify_photo_support(@module_api_name)
        require_relative 'file_handler'
        handler_instance.api_call(FileHandler.name, 'application/json')
      end

        # The method to delete photo
        # @param id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_photo(id)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + id.to_s
        api_path = api_path + '/photo'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'file_handler'
        handler_instance.api_call(FileHandler.name, 'application/json')
      end

        # The method to mass update records
        # @param request [MassUpdateBodyWrapper] An instance of MassUpdateBodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def mass_update_records(request)
        if request!=nil and !request.is_a? MassUpdateBodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: MassUpdateBodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/actions/mass_update'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'mass_update_action_handler'
        handler_instance.api_call(MassUpdateActionHandler.name, 'application/json')
      end

        # The method to get mass update status
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_mass_update_status(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/actions/mass_update'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'mass_update_response_handler'
        handler_instance.api_call(MassUpdateResponseHandler.name, 'application/json')
      end

        # The method to assign territories to multiple records
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def assign_territories_to_multiple_records(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/actions/assign_territories'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to assign territory to record
        # @param id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def assign_territory_to_record(id, request)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + id.to_s
        api_path = api_path + '/actions/assign_territories'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to remove territories from multiple records
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def remove_territories_from_multiple_records(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/actions/remove_territories'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to remove territories from record
        # @param id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def remove_territories_from_record(id, request)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + id.to_s
        api_path = api_path + '/actions/remove_territories'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to record count
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def record_count(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/actions/count'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'count_handler'
        handler_instance.api_call(CountHandler.name, 'application/json')
      end

        # The method to get record using external id
        # @param external_field_value [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_record_using_external_id(external_field_value, param_instance=nil, header_instance=nil)
        if !external_field_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_field_value EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_field_value.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update record using external id
        # @param external_field_value [String] A String
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def update_record_using_external_id(external_field_value, request, header_instance=nil)
        if !external_field_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_field_value EXPECTED TYPE: String', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_field_value.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        handler_instance.header = header_instance
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete record using external id
        # @param external_field_value [String] A String
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @param header_instance [HeaderMap] An instance of HeaderMap
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_record_using_external_id(external_field_value, param_instance=nil, header_instance=nil)
        if !external_field_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external_field_value EXPECTED TYPE: String', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        if header_instance!=nil and !header_instance.is_a? HeaderMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + external_field_value.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.param = param_instance
        handler_instance.header = header_instance
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to clone record
        # @param id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def clone_record(id)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/'
        api_path = api_path + @module_api_name.to_s
        api_path = api_path + '/'
        api_path = api_path + id.to_s
        api_path = api_path + '/actions/clone'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.mandatory_checker = true
        handler_instance.module_api_name = @module_api_name
        Util::Utility.get_fields(@module_api_name, handler_instance)
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetRecordParam
          @@approved =   Param.new('approved', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.approved
          @@approved
        end
          @@converted =   Param.new('converted', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.converted
          @@converted
        end
          @@cvid =   Param.new('cvid', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.cvid
          @@cvid
        end
          @@uid =   Param.new('uid', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.uid
          @@uid
        end
          @@fields =   Param.new('fields', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.fields
          @@fields
        end
          @@startDateTime =   Param.new('startDateTime', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.startDateTime
          @@startDateTime
        end
          @@endDateTime =   Param.new('endDateTime', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.endDateTime
          @@endDateTime
        end
          @@territory_id =   Param.new('territory_id', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.territory_id
          @@territory_id
        end
          @@include_child =   Param.new('include_child', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.include_child
          @@include_child
        end
          @@on_demand_properties =   Param.new('on_demand_properties', 'com.zoho.crm.api.Record.GetRecordParam')
        def self.on_demand_properties
          @@on_demand_properties
        end
      end

      class GetRecordHeader
          @@If_modified_since =   Header.new('If-Modified-Since', 'com.zoho.crm.api.Record.GetRecordHeader')
        def self.If_modified_since
          @@If_modified_since
        end
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.GetRecordHeader')
        def self.X_external
          @@X_external
        end
      end

      class UpdateRecordHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.UpdateRecordHeader')
        def self.X_external
          @@X_external
        end
      end

      class DeleteRecordParam
          @@wf_trigger =   Param.new('wf_trigger', 'com.zoho.crm.api.Record.DeleteRecordParam')
        def self.wf_trigger
          @@wf_trigger
        end
      end

      class DeleteRecordHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.DeleteRecordHeader')
        def self.X_external
          @@X_external
        end
      end

      class GetRecordsParam
          @@approved =   Param.new('approved', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.approved
          @@approved
        end
          @@converted =   Param.new('converted', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.converted
          @@converted
        end
          @@cvid =   Param.new('cvid', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.cvid
          @@cvid
        end
          @@ids =   Param.new('ids', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.ids
          @@ids
        end
          @@uid =   Param.new('uid', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.uid
          @@uid
        end
          @@fields =   Param.new('fields', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.fields
          @@fields
        end
          @@sort_by =   Param.new('sort_by', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.sort_by
          @@sort_by
        end
          @@sort_order =   Param.new('sort_order', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.sort_order
          @@sort_order
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.per_page
          @@per_page
        end
          @@startDateTime =   Param.new('startDateTime', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.startDateTime
          @@startDateTime
        end
          @@endDateTime =   Param.new('endDateTime', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.endDateTime
          @@endDateTime
        end
          @@territory_id =   Param.new('territory_id', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.territory_id
          @@territory_id
        end
          @@include_child =   Param.new('include_child', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.include_child
          @@include_child
        end
          @@page_token =   Param.new('page_token', 'com.zoho.crm.api.Record.GetRecordsParam')
        def self.page_token
          @@page_token
        end
      end

      class GetRecordsHeader
          @@If_modified_since =   Header.new('If-Modified-Since', 'com.zoho.crm.api.Record.GetRecordsHeader')
        def self.If_modified_since
          @@If_modified_since
        end
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.GetRecordsHeader')
        def self.X_external
          @@X_external
        end
      end

      class CreateRecordsHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.CreateRecordsHeader')
        def self.X_external
          @@X_external
        end
      end

      class UpdateRecordsHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.UpdateRecordsHeader')
        def self.X_external
          @@X_external
        end
      end

      class DeleteRecordsParam
          @@ids =   Param.new('ids', 'com.zoho.crm.api.Record.DeleteRecordsParam')
        def self.ids
          @@ids
        end
          @@wf_trigger =   Param.new('wf_trigger', 'com.zoho.crm.api.Record.DeleteRecordsParam')
        def self.wf_trigger
          @@wf_trigger
        end
      end

      class DeleteRecordsHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.DeleteRecordsHeader')
        def self.X_external
          @@X_external
        end
      end

      class UpsertRecordsHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.UpsertRecordsHeader')
        def self.X_external
          @@X_external
        end
      end

      class GetDeletedRecordsParam
          @@type =   Param.new('type', 'com.zoho.crm.api.Record.GetDeletedRecordsParam')
        def self.type
          @@type
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.Record.GetDeletedRecordsParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.Record.GetDeletedRecordsParam')
        def self.per_page
          @@per_page
        end
      end

      class GetDeletedRecordsHeader
          @@If_modified_since =   Header.new('If-Modified-Since', 'com.zoho.crm.api.Record.GetDeletedRecordsHeader')
        def self.If_modified_since
          @@If_modified_since
        end
      end

      class SearchRecordsParam
          @@criteria =   Param.new('criteria', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.criteria
          @@criteria
        end
          @@email =   Param.new('email', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.email
          @@email
        end
          @@phone =   Param.new('phone', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.phone
          @@phone
        end
          @@word =   Param.new('word', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.word
          @@word
        end
          @@converted =   Param.new('converted', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.converted
          @@converted
        end
          @@approved =   Param.new('approved', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.approved
          @@approved
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.per_page
          @@per_page
        end
          @@fields =   Param.new('fields', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.fields
          @@fields
        end
          @@cvid =   Param.new('cvid', 'com.zoho.crm.api.Record.SearchRecordsParam')
        def self.cvid
          @@cvid
        end
      end

      class SearchRecordsHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.SearchRecordsHeader')
        def self.X_external
          @@X_external
        end
      end

      class UploadPhotoParam
          @@restrict_triggers =   Param.new('restrict_triggers', 'com.zoho.crm.api.Record.UploadPhotoParam')
        def self.restrict_triggers
          @@restrict_triggers
        end
      end

      class GetMassUpdateStatusParam
          @@job_id =   Param.new('job_id', 'com.zoho.crm.api.Record.GetMassUpdateStatusParam')
        def self.job_id
          @@job_id
        end
      end

      class RecordCountParam
          @@criteria =   Param.new('criteria', 'com.zoho.crm.api.Record.RecordCountParam')
        def self.criteria
          @@criteria
        end
          @@email =   Param.new('email', 'com.zoho.crm.api.Record.RecordCountParam')
        def self.email
          @@email
        end
          @@phone =   Param.new('phone', 'com.zoho.crm.api.Record.RecordCountParam')
        def self.phone
          @@phone
        end
          @@word =   Param.new('word', 'com.zoho.crm.api.Record.RecordCountParam')
        def self.word
          @@word
        end
      end

      class GetRecordUsingExternalIDParam
          @@approved =   Param.new('approved', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDParam')
        def self.approved
          @@approved
        end
          @@converted =   Param.new('converted', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDParam')
        def self.converted
          @@converted
        end
          @@cvid =   Param.new('cvid', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDParam')
        def self.cvid
          @@cvid
        end
          @@uid =   Param.new('uid', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDParam')
        def self.uid
          @@uid
        end
          @@fields =   Param.new('fields', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDParam')
        def self.fields
          @@fields
        end
          @@startDateTime =   Param.new('startDateTime', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDParam')
        def self.startDateTime
          @@startDateTime
        end
          @@endDateTime =   Param.new('endDateTime', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDParam')
        def self.endDateTime
          @@endDateTime
        end
          @@territory_id =   Param.new('territory_id', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDParam')
        def self.territory_id
          @@territory_id
        end
          @@include_child =   Param.new('include_child', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDParam')
        def self.include_child
          @@include_child
        end
      end

      class GetRecordUsingExternalIDHeader
          @@If_modified_since =   Header.new('If-Modified-Since', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDHeader')
        def self.If_modified_since
          @@If_modified_since
        end
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.GetRecordUsingExternalIDHeader')
        def self.X_external
          @@X_external
        end
      end

      class UpdateRecordUsingExternalIDHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.UpdateRecordUsingExternalIDHeader')
        def self.X_external
          @@X_external
        end
      end

      class DeleteRecordUsingExternalIDParam
          @@wf_trigger =   Param.new('wf_trigger', 'com.zoho.crm.api.Record.DeleteRecordUsingExternalIDParam')
        def self.wf_trigger
          @@wf_trigger
        end
      end

      class DeleteRecordUsingExternalIDHeader
          @@X_external =   Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.DeleteRecordUsingExternalIDHeader')
        def self.X_external
          @@X_external
        end
      end

    end
  end
end
