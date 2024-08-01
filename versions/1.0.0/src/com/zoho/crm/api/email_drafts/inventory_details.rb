require_relative '../record/record'
require_relative '../util/model'

module ZOHOCRMSDK
  module EmailDrafts
    class InventoryDetails
      include Util::Model

      # Creates an instance of InventoryDetails
      def initialize
        @inventory_template = nil
        @record = nil
        @paper_type = nil
        @view_type = nil
        @key_modified = Hash.new
      end

        # The method to get the inventory_template
        # @return An instance of InventoryTemplate

      def inventory_template
        @inventory_template
      end

        # The method to set the value to inventory_template
        # @param inventory_template [InventoryTemplate] An instance of InventoryTemplate

      def inventory_template=(inventory_template)
        if inventory_template!=nil and !inventory_template.is_a? InventoryTemplate
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: inventory_template EXPECTED TYPE: InventoryTemplate', nil, nil)
        end
        @inventory_template = inventory_template
        @key_modified['inventory_template'] = 1
      end

        # The method to get the record
        # @return An instance of Record::Record

      def record
        @record
      end

        # The method to set the value to record
        # @param record [Record::Record] An instance of Record::Record

      def record=(record)
        if record!=nil and !record.is_a? Record::Record
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record EXPECTED TYPE: Record', nil, nil)
        end
        @record = record
        @key_modified['record'] = 1
      end

        # The method to get the paper_type
        # @return A String value

      def paper_type
        @paper_type
      end

        # The method to set the value to paper_type
        # @param paper_type [String] A String

      def paper_type=(paper_type)
        if paper_type!=nil and !paper_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: paper_type EXPECTED TYPE: String', nil, nil)
        end
        @paper_type = paper_type
        @key_modified['paper_type'] = 1
      end

        # The method to get the view_type
        # @return A String value

      def view_type
        @view_type
      end

        # The method to set the value to view_type
        # @param view_type [String] A String

      def view_type=(view_type)
        if view_type!=nil and !view_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: view_type EXPECTED TYPE: String', nil, nil)
        end
        @view_type = view_type
        @key_modified['view_type'] = 1
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
