require_relative '../layouts/layouts'
require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class PortalUserType
      include Util::Model

      # Creates an instance of PortalUserType
      def initialize
        @id = nil
        @layout = nil
        @chart_data = nil
        @screens = nil
        @key_modified = Hash.new
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

        # The method to get the chart_data
        # @return An instance of ChartData

      def chart_data
        @chart_data
      end

        # The method to set the value to chart_data
        # @param chart_data [ChartData] An instance of ChartData

      def chart_data=(chart_data)
        if chart_data!=nil and !chart_data.is_a? ChartData
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: chart_data EXPECTED TYPE: ChartData', nil, nil)
        end
        @chart_data = chart_data
        @key_modified['chart_data'] = 1
      end

        # The method to get the screens
        # @return An instance of Array

      def screens
        @screens
      end

        # The method to set the value to screens
        # @param screens [Array] An instance of Array

      def screens=(screens)
        if screens!=nil and !screens.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: screens EXPECTED TYPE: Array', nil, nil)
        end
        @screens = screens
        @key_modified['screens'] = 1
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
