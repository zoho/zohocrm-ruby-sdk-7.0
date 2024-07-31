require_relative '../fields/lookup'
require_relative '../fields/query_details'
require_relative '../fields/show_fields'
require_relative '../util/model'

module ZOHOCRMSDK
  module Modules
    class ModuleFieldLookup < Fields::Lookup
      include Util::Model

      # Creates an instance of ModuleFieldLookup
      def initialize
        super
        @query_details = nil
        @module_1 = nil
        @display_label = nil
        @api_name = nil
        @id = nil
        @revalidate_filter_during_edit = nil
        @show_fields = nil
        @key_modified = Hash.new
      end

        # The method to get the query_details
        # @return An instance of Fields::QueryDetails

      def query_details
        @query_details
      end

        # The method to set the value to query_details
        # @param query_details [Fields::QueryDetails] An instance of Fields::QueryDetails

      def query_details=(query_details)
        if query_details!=nil and !query_details.is_a? Fields::QueryDetails
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: query_details EXPECTED TYPE: QueryDetails', nil, nil)
        end
        @query_details = query_details
        @key_modified['query_details'] = 1
      end

        # The method to get the module
        # @return An instance of MinifiedModule

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [MinifiedModule] An instance of MinifiedModule

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? MinifiedModule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: MinifiedModule', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the display_label
        # @return A String value

      def display_label
        @display_label
      end

        # The method to set the value to display_label
        # @param display_label [String] A String

      def display_label=(display_label)
        if display_label!=nil and !display_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_label EXPECTED TYPE: String', nil, nil)
        end
        @display_label = display_label
        @key_modified['display_label'] = 1
      end

        # The method to get the api_name
        # @return A String value

      def api_name
        @api_name
      end

        # The method to set the value to api_name
        # @param api_name [String] A String

      def api_name=(api_name)
        if api_name!=nil and !api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
        end
        @api_name = api_name
        @key_modified['api_name'] = 1
      end

        # The method to get the id
        # @return A Integer value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [Integer] A Integer

      def id=(id)
        if id!=nil and !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
      end

        # The method to get the revalidate_filter_during_edit
        # @return A Boolean value

      def revalidate_filter_during_edit
        @revalidate_filter_during_edit
      end

        # The method to set the value to revalidate_filter_during_edit
        # @param revalidate_filter_during_edit [Boolean] A Boolean

      def revalidate_filter_during_edit=(revalidate_filter_during_edit)
        if revalidate_filter_during_edit!=nil and ! [true, false].include?revalidate_filter_during_edit
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: revalidate_filter_during_edit EXPECTED TYPE: Boolean', nil, nil)
        end
        @revalidate_filter_during_edit = revalidate_filter_during_edit
        @key_modified['revalidate_filter_during_edit'] = 1
      end

        # The method to get the show_fields
        # @return An instance of Array

      def show_fields
        @show_fields
      end

        # The method to set the value to show_fields
        # @param show_fields [Array] An instance of Array

      def show_fields=(show_fields)
        if show_fields!=nil and !show_fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show_fields EXPECTED TYPE: Array', nil, nil)
        end
        @show_fields = show_fields
        @key_modified['show_fields'] = 1
      end

        # The method to check if the user has modified the given key
        # @param key [String] A String
        # @return A Integer value

      def is_key_modified(key)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if @key_modified.key?(key)
          return @key_modified[key]
        end

        nil
      end

        # The method to mark the given key as modified
        # @param key [String] A String
        # @param modification [Integer] A Integer

      def set_key_modified(key, modification)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if modification!=nil and !modification.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modification EXPECTED TYPE: Integer', nil, nil)
        end
        @key_modified[key] = modification
      end

    end
  end
end
