require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module RelatedLists
    class RelatedList
      include Util::Model

      # Creates an instance of RelatedList
      def initialize
        @id = nil
        @sequence_number = nil
        @display_label = nil
        @api_name = nil
        @module_1 = nil
        @name = nil
        @action = nil
        @href = nil
        @type = nil
        @connectedmodule = nil
        @linkingmodule = nil
        @visible = nil
        @customize_sort = nil
        @customize_fields = nil
        @customize_display_label = nil
        @sort_by = nil
        @sort_order = nil
        @fields = nil
        @status = nil
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

        # The method to get the sequence_number
        # @return A String value

      def sequence_number
        @sequence_number
      end

        # The method to set the value to sequence_number
        # @param sequence_number [String] A String

      def sequence_number=(sequence_number)
        if sequence_number!=nil and !sequence_number.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sequence_number EXPECTED TYPE: String', nil, nil)
        end
        @sequence_number = sequence_number
        @key_modified['sequence_number'] = 1
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

        # The method to get the action
        # @return A String value

      def action
        @action
      end

        # The method to set the value to action
        # @param action [String] A String

      def action=(action)
        if action!=nil and !action.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: action EXPECTED TYPE: String', nil, nil)
        end
        @action = action
        @key_modified['action'] = 1
      end

        # The method to get the href
        # @return A String value

      def href
        @href
      end

        # The method to set the value to href
        # @param href [String] A String

      def href=(href)
        if href!=nil and !href.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: href EXPECTED TYPE: String', nil, nil)
        end
        @href = href
        @key_modified['href'] = 1
      end

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the connectedmodule
        # @return A String value

      def connectedmodule
        @connectedmodule
      end

        # The method to set the value to connectedmodule
        # @param connectedmodule [String] A String

      def connectedmodule=(connectedmodule)
        if connectedmodule!=nil and !connectedmodule.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: connectedmodule EXPECTED TYPE: String', nil, nil)
        end
        @connectedmodule = connectedmodule
        @key_modified['connectedmodule'] = 1
      end

        # The method to get the linkingmodule
        # @return A String value

      def linkingmodule
        @linkingmodule
      end

        # The method to set the value to linkingmodule
        # @param linkingmodule [String] A String

      def linkingmodule=(linkingmodule)
        if linkingmodule!=nil and !linkingmodule.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: linkingmodule EXPECTED TYPE: String', nil, nil)
        end
        @linkingmodule = linkingmodule
        @key_modified['linkingmodule'] = 1
      end

        # The method to get the visible
        # @return A Boolean value

      def visible
        @visible
      end

        # The method to set the value to visible
        # @param visible [Boolean] A Boolean

      def visible=(visible)
        if visible!=nil and ! [true, false].include?visible
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: visible EXPECTED TYPE: Boolean', nil, nil)
        end
        @visible = visible
        @key_modified['visible'] = 1
      end

        # The method to get the customize_sort
        # @return A Boolean value

      def customize_sort
        @customize_sort
      end

        # The method to set the value to customize_sort
        # @param customize_sort [Boolean] A Boolean

      def customize_sort=(customize_sort)
        if customize_sort!=nil and ! [true, false].include?customize_sort
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: customize_sort EXPECTED TYPE: Boolean', nil, nil)
        end
        @customize_sort = customize_sort
        @key_modified['customize_sort'] = 1
      end

        # The method to get the customize_fields
        # @return A Boolean value

      def customize_fields
        @customize_fields
      end

        # The method to set the value to customize_fields
        # @param customize_fields [Boolean] A Boolean

      def customize_fields=(customize_fields)
        if customize_fields!=nil and ! [true, false].include?customize_fields
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: customize_fields EXPECTED TYPE: Boolean', nil, nil)
        end
        @customize_fields = customize_fields
        @key_modified['customize_fields'] = 1
      end

        # The method to get the customize_display_label
        # @return A Boolean value

      def customize_display_label
        @customize_display_label
      end

        # The method to set the value to customize_display_label
        # @param customize_display_label [Boolean] A Boolean

      def customize_display_label=(customize_display_label)
        if customize_display_label!=nil and ! [true, false].include?customize_display_label
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: customize_display_label EXPECTED TYPE: Boolean', nil, nil)
        end
        @customize_display_label = customize_display_label
        @key_modified['customize_display_label'] = 1
      end

        # The method to get the sort_by
        # @return An instance of Field

      def sort_by
        @sort_by
      end

        # The method to set the value to sort_by
        # @param sort_by [Field] An instance of Field

      def sort_by=(sort_by)
        if sort_by!=nil and !sort_by.is_a? Field
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sort_by EXPECTED TYPE: Field', nil, nil)
        end
        @sort_by = sort_by
        @key_modified['sort_by'] = 1
      end

        # The method to get the sort_order
        # @return A String value

      def sort_order
        @sort_order
      end

        # The method to set the value to sort_order
        # @param sort_order [String] A String

      def sort_order=(sort_order)
        if sort_order!=nil and !sort_order.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sort_order EXPECTED TYPE: String', nil, nil)
        end
        @sort_order = sort_order
        @key_modified['sort_order'] = 1
      end

        # The method to get the fields
        # @return An instance of Array

      def fields
        @fields
      end

        # The method to set the value to fields
        # @param fields [Array] An instance of Array

      def fields=(fields)
        if fields!=nil and !fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: Array', nil, nil)
        end
        @fields = fields
        @key_modified['fields'] = 1
      end

        # The method to get the status
        # @return An instance of Util::Choice

      def status
        @status
      end

        # The method to set the value to status
        # @param status [Util::Choice] An instance of Util::Choice

      def status=(status)
        if status!=nil and !status.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @status = status
        @key_modified['status'] = 1
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
