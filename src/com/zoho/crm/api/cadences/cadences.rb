require_relative '../util/model'

module ZOHOCRMSDK
  module Cadences
    class Cadences
      include Util::Model

      # Creates an instance of Cadences
      def initialize
        @summary = nil
        @created_time = nil
        @module_1 = nil
        @active = nil
        @execution_details = nil
        @published = nil
        @type = nil
        @created_by = nil
        @modified_time = nil
        @name = nil
        @modified_by = nil
        @id = nil
        @custom_view = nil
        @status = nil
        @key_modified = Hash.new
      end

        # The method to get the summary
        # @return An instance of Summary

      def summary
        @summary
      end

        # The method to set the value to summary
        # @param summary [Summary] An instance of Summary

      def summary=(summary)
        if summary!=nil and !summary.is_a? Summary
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: summary EXPECTED TYPE: Summary', nil, nil)
        end
        @summary = summary
        @key_modified['summary'] = 1
      end

        # The method to get the created_time
        # @return A String value

      def created_time
        @created_time
      end

        # The method to set the value to created_time
        # @param created_time [String] A String

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: String', nil, nil)
        end
        @created_time = created_time
        @key_modified['created_time'] = 1
      end

        # The method to get the module
        # @return An instance of Module

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [Module] An instance of Module

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? Module
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: Module', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the active
        # @return A Boolean value

      def active
        @active
      end

        # The method to set the value to active
        # @param active [Boolean] A Boolean

      def active=(active)
        if active!=nil and ! [true, false].include?active
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: active EXPECTED TYPE: Boolean', nil, nil)
        end
        @active = active
        @key_modified['active'] = 1
      end

        # The method to get the execution_details
        # @return An instance of ExecutionDetail

      def execution_details
        @execution_details
      end

        # The method to set the value to execution_details
        # @param execution_details [ExecutionDetail] An instance of ExecutionDetail

      def execution_details=(execution_details)
        if execution_details!=nil and !execution_details.is_a? ExecutionDetail
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: execution_details EXPECTED TYPE: ExecutionDetail', nil, nil)
        end
        @execution_details = execution_details
        @key_modified['execution_details'] = 1
      end

        # The method to get the published
        # @return A Boolean value

      def published
        @published
      end

        # The method to set the value to published
        # @param published [Boolean] A Boolean

      def published=(published)
        if published!=nil and ! [true, false].include?published
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: published EXPECTED TYPE: Boolean', nil, nil)
        end
        @published = published
        @key_modified['published'] = 1
      end

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
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

        # The method to get the modified_time
        # @return A String value

      def modified_time
        @modified_time
      end

        # The method to set the value to modified_time
        # @param modified_time [String] A String

      def modified_time=(modified_time)
        if modified_time!=nil and !modified_time.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: String', nil, nil)
        end
        @modified_time = modified_time
        @key_modified['modified_time'] = 1
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

        # The method to get the custom_view
        # @return An instance of CustomView

      def custom_view
        @custom_view
      end

        # The method to set the value to custom_view
        # @param custom_view [CustomView] An instance of CustomView

      def custom_view=(custom_view)
        if custom_view!=nil and !custom_view.is_a? CustomView
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: custom_view EXPECTED TYPE: CustomView', nil, nil)
        end
        @custom_view = custom_view
        @key_modified['custom_view'] = 1
      end

        # The method to get the status
        # @return A String value

      def status
        @status
      end

        # The method to set the value to status
        # @param status [String] A String

      def status=(status)
        if status!=nil and !status.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: String', nil, nil)
        end
        @status = status
        @key_modified['status'] = 1
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
