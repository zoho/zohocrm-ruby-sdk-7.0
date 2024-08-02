require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ZOHOCRMSDK
  module RescheduleHistory
    class RescheduleHistoryOperations

      # Creates an instance of RescheduleHistoryOperations
      def initialize
      end

        # The method to add appointments rescheduled history
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def add_appointments_rescheduled_history(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Appointments_Rescheduled_History__s'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_POST
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to update appointments rescheduled history
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_appointments_rescheduled_history(request)
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Appointments_Rescheduled_History__s'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get appointments rescheduled history
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_appointments_rescheduled_history(param_instance=nil)
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Appointments_Rescheduled_History__s'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to update appointment rescheduled history
        # @param id [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def update_appointment_rescheduled_history(id, request)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Appointments_Rescheduled_History__s/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'UPDATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to get appointment rescheduled history
        # @param id [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_appointment_rescheduled_history(id, param_instance=nil)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Appointments_Rescheduled_History__s/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to delete appointments rescheduled history
        # @param id [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_appointments_rescheduled_history(id)
        if !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Appointments_Rescheduled_History__s/'
        api_path = api_path + id.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetAppointmentsRescheduledHistoryParam
          @@fields =   Param.new('fields', 'com.zoho.crm.api.RescheduleHistory.GetAppointmentsRescheduledHistoryParam')
        def self.fields
          @@fields
        end
          @@page =   Param.new('page', 'com.zoho.crm.api.RescheduleHistory.GetAppointmentsRescheduledHistoryParam')
        def self.page
          @@page
        end
          @@per_page =   Param.new('per_page', 'com.zoho.crm.api.RescheduleHistory.GetAppointmentsRescheduledHistoryParam')
        def self.per_page
          @@per_page
        end
          @@sort_order =   Param.new('sort_order', 'com.zoho.crm.api.RescheduleHistory.GetAppointmentsRescheduledHistoryParam')
        def self.sort_order
          @@sort_order
        end
          @@sort_by =   Param.new('sort_by', 'com.zoho.crm.api.RescheduleHistory.GetAppointmentsRescheduledHistoryParam')
        def self.sort_by
          @@sort_by
        end
          @@ids =   Param.new('ids', 'com.zoho.crm.api.RescheduleHistory.GetAppointmentsRescheduledHistoryParam')
        def self.ids
          @@ids
        end
      end

      class GetAppointmentRescheduledHistoryParam
          @@fields =   Param.new('fields', 'com.zoho.crm.api.RescheduleHistory.GetAppointmentRescheduledHistoryParam')
        def self.fields
          @@fields
        end
      end

    end
  end
end
