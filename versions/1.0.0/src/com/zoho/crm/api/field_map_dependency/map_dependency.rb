require_relative '../util/model'

module ZOHOCRMSDK
  module FieldMapDependency
    class MapDependency
      include Util::Model

      # Creates an instance of MapDependency
      def initialize
        @parent = nil
        @child = nil
        @pick_list_values = nil
        @internal = nil
        @active = nil
        @id = nil
        @source = nil
        @category = nil
        @sub_module = nil
        @key_modified = Hash.new
      end

        # The method to get the parent
        # @return An instance of Parent

      def parent
        @parent
      end

        # The method to set the value to parent
        # @param parent [Parent] An instance of Parent

      def parent=(parent)
        if parent!=nil and !parent.is_a? Parent
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: parent EXPECTED TYPE: Parent', nil, nil)
        end
        @parent = parent
        @key_modified['parent'] = 1
      end

        # The method to get the child
        # @return An instance of Child

      def child
        @child
      end

        # The method to set the value to child
        # @param child [Child] An instance of Child

      def child=(child)
        if child!=nil and !child.is_a? Child
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: child EXPECTED TYPE: Child', nil, nil)
        end
        @child = child
        @key_modified['child'] = 1
      end

        # The method to get the pick_list_values
        # @return An instance of Array

      def pick_list_values
        @pick_list_values
      end

        # The method to set the value to pick_list_values
        # @param pick_list_values [Array] An instance of Array

      def pick_list_values=(pick_list_values)
        if pick_list_values!=nil and !pick_list_values.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pick_list_values EXPECTED TYPE: Array', nil, nil)
        end
        @pick_list_values = pick_list_values
        @key_modified['pick_list_values'] = 1
      end

        # The method to get the internal
        # @return A Boolean value

      def internal
        @internal
      end

        # The method to set the value to internal
        # @param internal [Boolean] A Boolean

      def internal=(internal)
        if internal!=nil and ! [true, false].include?internal
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: internal EXPECTED TYPE: Boolean', nil, nil)
        end
        @internal = internal
        @key_modified['internal'] = 1
      end

        # The method to get the active
        # @return A Boolean value

      def active
        @active
      end

        # The method to set the value to active
        # @param active [Boolean] A Boolean

      def active=(active)
        if active!=nil and ! [true, false].include?active
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: active EXPECTED TYPE: Boolean', nil, nil)
        end
        @active = active
        @key_modified['active'] = 1
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

        # The method to get the source
        # @return A Integer value

      def source
        @source
      end

        # The method to set the value to source
        # @param source [Integer] A Integer

      def source=(source)
        if source!=nil and !source.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: source EXPECTED TYPE: Integer', nil, nil)
        end
        @source = source
        @key_modified['source'] = 1
      end

        # The method to get the category
        # @return A Integer value

      def category
        @category
      end

        # The method to set the value to category
        # @param category [Integer] A Integer

      def category=(category)
        if category!=nil and !category.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: category EXPECTED TYPE: Integer', nil, nil)
        end
        @category = category
        @key_modified['category'] = 1
      end

        # The method to get the sub_module
        # @return An instance of SubModule

      def sub_module
        @sub_module
      end

        # The method to set the value to sub_module
        # @param sub_module [SubModule] An instance of SubModule

      def sub_module=(sub_module)
        if sub_module!=nil and !sub_module.is_a? SubModule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sub_module EXPECTED TYPE: SubModule', nil, nil)
        end
        @sub_module = sub_module
        @key_modified['sub_module'] = 1
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
