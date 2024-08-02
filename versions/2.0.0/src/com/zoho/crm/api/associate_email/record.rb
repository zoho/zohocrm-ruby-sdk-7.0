require_relative '../util/model'

module ZOHOCRMSDK
  module AssociateEmail
    class Record
      include Util::Model

      # Creates an instance of Record
      def initialize
        @module_1 = nil
        @id = nil
        @linked_record = nil
        @key_modified = Hash.new
      end

        # The method to get the module
        # @return An instance of ModuleMap

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [ModuleMap] An instance of ModuleMap

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? ModuleMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: ModuleMap', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
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

        # The method to get the linked_record
        # @return An instance of LinkedRecord

      def linked_record
        @linked_record
      end

        # The method to set the value to linked_record
        # @param linked_record [LinkedRecord] An instance of LinkedRecord

      def linked_record=(linked_record)
        if linked_record!=nil and !linked_record.is_a? LinkedRecord
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: linked_record EXPECTED TYPE: LinkedRecord', nil, nil)
        end
        @linked_record = linked_record
        @key_modified['linked_record'] = 1
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
