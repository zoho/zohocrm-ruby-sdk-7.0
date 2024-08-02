require_relative '../modules/minified_module'
require_relative '../util/model'

module ZOHOCRMSDK
  module AssignmentRules
    class AssignmentRules
      include Util::Model

      # Creates an instance of AssignmentRules
      def initialize
        @created_time = nil
        @modified_time = nil
        @default_assignee = nil
        @api_name = nil
        @modified_by = nil
        @created_by = nil
        @id = nil
        @name = nil
        @module_1 = nil
        @description = nil
        @key_modified = Hash.new
      end

        # The method to get the created_time
        # @return An instance of DateTime

      def created_time
        @created_time
      end

        # The method to set the value to created_time
        # @param created_time [DateTime] An instance of DateTime

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @created_time = created_time
        @key_modified['created_time'] = 1
      end

        # The method to get the modified_time
        # @return An instance of DateTime

      def modified_time
        @modified_time
      end

        # The method to set the value to modified_time
        # @param modified_time [DateTime] An instance of DateTime

      def modified_time=(modified_time)
        if modified_time!=nil and !modified_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @modified_time = modified_time
        @key_modified['modified_time'] = 1
      end

        # The method to get the default_assignee
        # @return An instance of DefaultAssignee

      def default_assignee
        @default_assignee
      end

        # The method to set the value to default_assignee
        # @param default_assignee [DefaultAssignee] An instance of DefaultAssignee

      def default_assignee=(default_assignee)
        if default_assignee!=nil and !default_assignee.is_a? DefaultAssignee
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: default_assignee EXPECTED TYPE: DefaultAssignee', nil, nil)
        end
        @default_assignee = default_assignee
        @key_modified['default_assignee'] = 1
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

        # The method to get the modified_by
        # @return An instance of User

      def modified_by
        @modified_by
      end

        # The method to set the value to modified_by
        # @param modified_by [User] An instance of User

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: User', nil, nil)
        end
        @modified_by = modified_by
        @key_modified['modified_by'] = 1
      end

        # The method to get the created_by
        # @return An instance of User

      def created_by
        @created_by
      end

        # The method to set the value to created_by
        # @param created_by [User] An instance of User

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: User', nil, nil)
        end
        @created_by = created_by
        @key_modified['created_by'] = 1
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

        # The method to get the name
        # @return A String value

      def name
        @name
      end

        # The method to set the value to name
        # @param name [String] A String

      def name=(name)
        if name!=nil and !name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
        end
        @name = name
        @key_modified['name'] = 1
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

        # The method to get the description
        # @return A String value

      def description
        @description
      end

        # The method to set the value to description
        # @param description [String] A String

      def description=(description)
        if description!=nil and !description.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: String', nil, nil)
        end
        @description = description
        @key_modified['description'] = 1
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
