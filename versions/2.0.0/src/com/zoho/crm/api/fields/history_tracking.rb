require_relative '../modules/minified_module'
require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class HistoryTracking
      include Util::Model

      # Creates an instance of HistoryTracking
      def initialize
        @module_1 = nil
        @duration_configured_field = nil
        @key_modified = Hash.new
      end

        # The method to get the module
        # @return An instance of HistoryTrackingModule

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [HistoryTrackingModule] An instance of HistoryTrackingModule

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? HistoryTrackingModule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: HistoryTrackingModule', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the duration_configured_field
        # @return An instance of Modules::MinifiedModule

      def duration_configured_field
        @duration_configured_field
      end

        # The method to set the value to duration_configured_field
        # @param duration_configured_field [Modules::MinifiedModule] An instance of Modules::MinifiedModule

      def duration_configured_field=(duration_configured_field)
        if duration_configured_field!=nil and !duration_configured_field.is_a? Modules::MinifiedModule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: duration_configured_field EXPECTED TYPE: MinifiedModule', nil, nil)
        end
        @duration_configured_field = duration_configured_field
        @key_modified['duration_configured_field'] = 1
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
