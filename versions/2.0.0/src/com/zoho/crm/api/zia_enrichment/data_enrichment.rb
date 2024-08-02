require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaEnrichment
    class DataEnrichment
      include Util::Model

      # Creates an instance of DataEnrichment
      def initialize
        @module_1 = nil
        @type = nil
        @output_data_field_mapping = nil
        @input_data_field_mapping = nil
        @id = nil
        @status = nil
        @created_time = nil
        @created_by = nil
        @modified_time = nil
        @modified_by = nil
        @key_modified = Hash.new
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

        # The method to get the output_data_field_mapping
        # @return An instance of Array

      def output_data_field_mapping
        @output_data_field_mapping
      end

        # The method to set the value to output_data_field_mapping
        # @param output_data_field_mapping [Array] An instance of Array

      def output_data_field_mapping=(output_data_field_mapping)
        if output_data_field_mapping!=nil and !output_data_field_mapping.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: output_data_field_mapping EXPECTED TYPE: Array', nil, nil)
        end
        @output_data_field_mapping = output_data_field_mapping
        @key_modified['output_data_field_mapping'] = 1
      end

        # The method to get the input_data_field_mapping
        # @return An instance of Array

      def input_data_field_mapping
        @input_data_field_mapping
      end

        # The method to set the value to input_data_field_mapping
        # @param input_data_field_mapping [Array] An instance of Array

      def input_data_field_mapping=(input_data_field_mapping)
        if input_data_field_mapping!=nil and !input_data_field_mapping.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: input_data_field_mapping EXPECTED TYPE: Array', nil, nil)
        end
        @input_data_field_mapping = input_data_field_mapping
        @key_modified['input_data_field_mapping'] = 1
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

        # The method to get the status
        # @return A Boolean value

      def status
        @status
      end

        # The method to set the value to status
        # @param status [Boolean] A Boolean

      def status=(status)
        if status!=nil and ! [true, false].include?status
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: Boolean', nil, nil)
        end
        @status = status
        @key_modified['status'] = 1
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
