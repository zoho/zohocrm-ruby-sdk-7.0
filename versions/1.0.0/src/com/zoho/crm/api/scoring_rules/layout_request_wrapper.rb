require_relative '../util/model'

module ZOHOCRMSDK
  module ScoringRules
    class LayoutRequestWrapper
      include Util::Model

      # Creates an instance of LayoutRequestWrapper
      def initialize
        @layout = nil
        @key_modified = Hash.new
      end

        # The method to get the layout
        # @return An instance of Layout

      def layout
        @layout
      end

        # The method to set the value to layout
        # @param layout [Layout] An instance of Layout

      def layout=(layout)
        if layout!=nil and !layout.is_a? Layout
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layout EXPECTED TYPE: Layout', nil, nil)
        end
        @layout = layout
        @key_modified['layout'] = 1
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
