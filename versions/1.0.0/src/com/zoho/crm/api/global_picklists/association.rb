require_relative '../util/model'

module ZOHOCRMSDK
  module GlobalPicklists
    class Association
      include Util::Model

      # Creates an instance of Association
      def initialize
        @field = nil
        @module_1 = nil
        @layouts = nil
        @key_modified = Hash.new
      end

        # The method to get the field
        # @return An instance of Field

      def field
        @field
      end

        # The method to set the value to field
        # @param field [Field] An instance of Field

      def field=(field)
        if field!=nil and !field.is_a? Field
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field EXPECTED TYPE: Field', nil, nil)
        end
        @field = field
        @key_modified['field'] = 1
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

        # The method to get the layouts
        # @return An instance of Array

      def layouts
        @layouts
      end

        # The method to set the value to layouts
        # @param layouts [Array] An instance of Array

      def layouts=(layouts)
        if layouts!=nil and !layouts.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layouts EXPECTED TYPE: Array', nil, nil)
        end
        @layouts = layouts
        @key_modified['layouts'] = 1
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
