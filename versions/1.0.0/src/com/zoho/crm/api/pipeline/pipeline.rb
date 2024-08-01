require_relative '../util/model'

module ZOHOCRMSDK
  module Pipeline
    class Pipeline
      include Util::Model

      # Creates an instance of Pipeline
      def initialize
        @display_value = nil
        @default = nil
        @maps = nil
        @actual_value = nil
        @id = nil
        @child_available = nil
        @parent = nil
        @key_modified = Hash.new
      end

        # The method to get the display_value
        # @return A String value

      def display_value
        @display_value
      end

        # The method to set the value to display_value
        # @param display_value [String] A String

      def display_value=(display_value)
        if display_value!=nil and !display_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_value EXPECTED TYPE: String', nil, nil)
        end
        @display_value = display_value
        @key_modified['display_value'] = 1
      end

        # The method to get the default
        # @return A Boolean value

      def default
        @default
      end

        # The method to set the value to default
        # @param default [Boolean] A Boolean

      def default=(default)
        if default!=nil and ! [true, false].include?default
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: default EXPECTED TYPE: Boolean', nil, nil)
        end
        @default = default
        @key_modified['default'] = 1
      end

        # The method to get the maps
        # @return An instance of Array

      def maps
        @maps
      end

        # The method to set the value to maps
        # @param maps [Array] An instance of Array

      def maps=(maps)
        if maps!=nil and !maps.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: maps EXPECTED TYPE: Array', nil, nil)
        end
        @maps = maps
        @key_modified['maps'] = 1
      end

        # The method to get the actual_value
        # @return A String value

      def actual_value
        @actual_value
      end

        # The method to set the value to actual_value
        # @param actual_value [String] A String

      def actual_value=(actual_value)
        if actual_value!=nil and !actual_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: actual_value EXPECTED TYPE: String', nil, nil)
        end
        @actual_value = actual_value
        @key_modified['actual_value'] = 1
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

        # The method to get the child_available
        # @return A Boolean value

      def child_available
        @child_available
      end

        # The method to set the value to child_available
        # @param child_available [Boolean] A Boolean

      def child_available=(child_available)
        if child_available!=nil and ! [true, false].include?child_available
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: child_available EXPECTED TYPE: Boolean', nil, nil)
        end
        @child_available = child_available
        @key_modified['child_available'] = 1
      end

        # The method to get the parent
        # @return An instance of Pipeline

      def parent
        @parent
      end

        # The method to set the value to parent
        # @param parent [Pipeline] An instance of Pipeline

      def parent=(parent)
        if parent!=nil and !parent.is_a? Pipeline
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: parent EXPECTED TYPE: Pipeline', nil, nil)
        end
        @parent = parent
        @key_modified['parent'] = 1
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
