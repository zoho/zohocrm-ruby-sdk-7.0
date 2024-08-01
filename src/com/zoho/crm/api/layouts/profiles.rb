require_relative '../util/model'

module ZOHOCRMSDK
  module Layouts
    class Profiles
      include Util::Model

      # Creates an instance of Profiles
      def initialize
        @default = nil
        @name = nil
        @id = nil
        @defaultview = nil
        @defaultassignmentview = nil
        @key_modified = Hash.new
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

        # The method to get the defaultview
        # @return An instance of DefaultView

      def defaultview
        @defaultview
      end

        # The method to set the value to defaultview
        # @param defaultview [DefaultView] An instance of DefaultView

      def defaultview=(defaultview)
        if defaultview!=nil and !defaultview.is_a? DefaultView
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: defaultview EXPECTED TYPE: DefaultView', nil, nil)
        end
        @defaultview = defaultview
        @key_modified['_default_view'] = 1
      end

        # The method to get the defaultassignmentview
        # @return An instance of DefaultAssignmentView

      def defaultassignmentview
        @defaultassignmentview
      end

        # The method to set the value to defaultassignmentview
        # @param defaultassignmentview [DefaultAssignmentView] An instance of DefaultAssignmentView

      def defaultassignmentview=(defaultassignmentview)
        if defaultassignmentview!=nil and !defaultassignmentview.is_a? DefaultAssignmentView
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: defaultassignmentview EXPECTED TYPE: DefaultAssignmentView', nil, nil)
        end
        @defaultassignmentview = defaultassignmentview
        @key_modified['_default_assignment_view'] = 1
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
