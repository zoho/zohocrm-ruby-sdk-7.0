require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/utility'
require_relative '../util/constants'

module ZOHOCRMSDK
  module DealContactRoles
    class DealContactRolesOperations

      # Creates an instance of DealContactRolesOperations
      def initialize
      end

        # The method to get associated contact roles
        # @param deal [Integer] A Integer
        # @param param_instance [ParameterMap] An instance of ParameterMap
        # @return An instance of APIResponse
      # @raise SDKException
      def get_associated_contact_roles(deal, param_instance=nil)
        if !deal.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deal EXPECTED TYPE: Integer', nil, nil)
        end
        if param_instance!=nil and !param_instance.is_a? ParameterMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Deals/'
        api_path = api_path + deal.to_s
        api_path = api_path + '/Contact_Roles'
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.param = param_instance
        handler_instance.module_api_name = "Contacts"
        Util::Utility.get_fields("Contacts", handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to get associated contact roles specific to contact
        # @param contact [Integer] A Integer
        # @param deal [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def get_associated_contact_roles_specific_to_contact(contact, deal)
        if !contact.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contact EXPECTED TYPE: Integer', nil, nil)
        end
        if !deal.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deal EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Deals/'
        api_path = api_path + deal.to_s
        api_path = api_path + '/Contact_Roles/'
        api_path = api_path + contact.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_GET
        handler_instance.category_method = 'READ'
        handler_instance.module_api_name = "Contacts"
        Util::Utility.get_fields("Contacts", handler_instance)
        require_relative 'response_handler'
        handler_instance.api_call(ResponseHandler.name, 'application/json')
      end

        # The method to associate contact role to deal
        # @param contact [Integer] A Integer
        # @param deal [Integer] A Integer
        # @param request [BodyWrapper] An instance of BodyWrapper
        # @return An instance of APIResponse
      # @raise SDKException
      def associate_contact_role_to_deal(contact, deal, request)
        if !contact.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contact EXPECTED TYPE: Integer', nil, nil)
        end
        if !deal.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deal EXPECTED TYPE: Integer', nil, nil)
        end
        if request!=nil and !request.is_a? BodyWrapper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Deals/'
        api_path = api_path + deal.to_s
        api_path = api_path + '/Contact_Roles/'
        api_path = api_path + contact.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_PUT
        handler_instance.category_method = 'CREATE'
        handler_instance.content_type = 'application/json'
        handler_instance.request = request
        handler_instance.mandatory_checker = true
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

        # The method to delete contact role realation
        # @param contact [Integer] A Integer
        # @param deal [Integer] A Integer
        # @return An instance of APIResponse
      # @raise SDKException
      def delete_contact_role_realation(contact, deal)
        if !contact.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contact EXPECTED TYPE: Integer', nil, nil)
        end
        if !deal.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deal EXPECTED TYPE: Integer', nil, nil)
        end
        handler_instance = Handler::CommonAPIHandler.new
        api_path = ''
        api_path = api_path + '/crm/v7/Deals/'
        api_path = api_path + deal.to_s
        api_path = api_path + '/Contact_Roles/'
        api_path = api_path + contact.to_s
        handler_instance.api_path = api_path
        handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
        handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
        require_relative 'action_handler'
        handler_instance.api_call(ActionHandler.name, 'application/json')
      end

      class GetAssociatedContactRolesParam
          @@ids =   Param.new('ids', 'com.zoho.crm.api.DealContactRoles.GetAssociatedContactRolesParam')
        def self.ids
          @@ids
        end
          @@fields =   Param.new('fields', 'com.zoho.crm.api.DealContactRoles.GetAssociatedContactRolesParam')
        def self.fields
          @@fields
        end
      end

    end
  end
end
