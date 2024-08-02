require_relative '../modules/minified_module'
require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module BulkRead
    class Query
      include Util::Model

      # Creates an instance of Query
      def initialize
        @module_1 = nil
        @cvid = nil
        @fields = nil
        @page = nil
        @criteria = nil
        @file_type = nil
        @page_token = nil
        @key_modified = Hash.new
      end

        # The method to get the module
        # @return An instance of Modules::MinifiedModule

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [Modules::MinifiedModule] An instance of Modules::MinifiedModule

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? Modules::MinifiedModule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: MinifiedModule', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the cvid
        # @return A Integer value

      def cvid
        @cvid
      end

        # The method to set the value to cvid
        # @param cvid [Integer] A Integer

      def cvid=(cvid)
        if cvid!=nil and !cvid.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cvid EXPECTED TYPE: Integer', nil, nil)
        end
        @cvid = cvid
        @key_modified['cvid'] = 1
      end

        # The method to get the fields
        # @return An instance of Array

      def fields
        @fields
      end

        # The method to set the value to fields
        # @param fields [Array] An instance of Array

      def fields=(fields)
        if fields!=nil and !fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: Array', nil, nil)
        end
        @fields = fields
        @key_modified['fields'] = 1
      end

        # The method to get the page
        # @return A Integer value

      def page
        @page
      end

        # The method to set the value to page
        # @param page [Integer] A Integer

      def page=(page)
        if page!=nil and !page.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: page EXPECTED TYPE: Integer', nil, nil)
        end
        @page = page
        @key_modified['page'] = 1
      end

        # The method to get the criteria
        # @return An instance of Criteria

      def criteria
        @criteria
      end

        # The method to set the value to criteria
        # @param criteria [Criteria] An instance of Criteria

      def criteria=(criteria)
        if criteria!=nil and !criteria.is_a? Criteria
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: Criteria', nil, nil)
        end
        @criteria = criteria
        @key_modified['criteria'] = 1
      end

        # The method to get the file_type
        # @return An instance of Util::Choice

      def file_type
        @file_type
      end

        # The method to set the value to file_type
        # @param file_type [Util::Choice] An instance of Util::Choice

      def file_type=(file_type)
        if file_type!=nil and !file_type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @file_type = file_type
        @key_modified['file_type'] = 1
      end

        # The method to get the page_token
        # @return A String value

      def page_token
        @page_token
      end

        # The method to set the value to page_token
        # @param page_token [String] A String

      def page_token=(page_token)
        if page_token!=nil and !page_token.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: page_token EXPECTED TYPE: String', nil, nil)
        end
        @page_token = page_token
        @key_modified['page_token'] = 1
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
