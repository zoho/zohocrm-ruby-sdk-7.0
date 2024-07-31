require_relative '../layouts/layouts'
require_relative '../util/model'

module ZOHOCRMSDK
  module Fields
    class HistoryTrackingModule
      include Util::Model

      # Creates an instance of HistoryTrackingModule
      def initialize
        @layout = nil
        @display_label = nil
        @api_name = nil
        @module_1 = nil
        @id = nil
        @module_name = nil
        @key_modified = Hash.new
      end

        # The method to get the layout
        # @return An instance of Layouts::Layouts

      def layout
        @layout
      end

        # The method to set the value to layout
        # @param layout [Layouts::Layouts] An instance of Layouts::Layouts

      def layout=(layout)
        if layout!=nil and !layout.is_a? Layouts::Layouts
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layout EXPECTED TYPE: Layouts', nil, nil)
        end
        @layout = layout
        @key_modified['layout'] = 1
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

        # The method to get the module_name
        # @return A String value

      def module_name
        @module_name
      end

        # The method to set the value to module_name
        # @param module_name [String] A String

      def module_name=(module_name)
        if module_name!=nil and !module_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_name EXPECTED TYPE: String', nil, nil)
        end
        @module_name = module_name
        @key_modified['module_name'] = 1
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
