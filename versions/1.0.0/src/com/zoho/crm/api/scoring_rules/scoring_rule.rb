require_relative '../modules/modules'
require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module ScoringRules
    class ScoringRule
      include Util::Model

      # Creates an instance of ScoringRule
      def initialize
        @name = nil
        @description = nil
        @id = nil
        @layout = nil
        @created_time = nil
        @modified_time = nil
        @module_1 = nil
        @modified_by = nil
        @active = nil
        @created_by = nil
        @field_rules = nil
        @signal_rules = nil
        @key_modified = Hash.new
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

        # The method to get the description
        # @return A String value

      def description
        @description
      end

        # The method to set the value to description
        # @param description [String] A String

      def description=(description)
        if description!=nil and !description.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: String', nil, nil)
        end
        @description = description
        @key_modified['description'] = 1
      end

        # The method to get the id
        # @return A String value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [String] A String

      def id=(id)
        if id!=nil and !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
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

        # The method to get the created_time
        # @return A String value

      def created_time
        @created_time
      end

        # The method to set the value to created_time
        # @param created_time [String] A String

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: String', nil, nil)
        end
        @created_time = created_time
        @key_modified['created_time'] = 1
      end

        # The method to get the modified_time
        # @return A String value

      def modified_time
        @modified_time
      end

        # The method to set the value to modified_time
        # @param modified_time [String] A String

      def modified_time=(modified_time)
        if modified_time!=nil and !modified_time.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: String', nil, nil)
        end
        @modified_time = modified_time
        @key_modified['modified_time'] = 1
      end

        # The method to get the module
        # @return An instance of Modules::Modules

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [Modules::Modules] An instance of Modules::Modules

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? Modules::Modules
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: Modules', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the modified_by
        # @return An instance of Users::MinifiedUser

      def modified_by
        @modified_by
      end

        # The method to set the value to modified_by
        # @param modified_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @modified_by = modified_by
        @key_modified['modified_by'] = 1
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

        # The method to get the created_by
        # @return An instance of Users::MinifiedUser

      def created_by
        @created_by
      end

        # The method to set the value to created_by
        # @param created_by [Users::MinifiedUser] An instance of Users::MinifiedUser

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @created_by = created_by
        @key_modified['created_by'] = 1
      end

        # The method to get the field_rules
        # @return An instance of Array

      def field_rules
        @field_rules
      end

        # The method to set the value to field_rules
        # @param field_rules [Array] An instance of Array

      def field_rules=(field_rules)
        if field_rules!=nil and !field_rules.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_rules EXPECTED TYPE: Array', nil, nil)
        end
        @field_rules = field_rules
        @key_modified['field_rules'] = 1
      end

        # The method to get the signal_rules
        # @return An instance of Array

      def signal_rules
        @signal_rules
      end

        # The method to set the value to signal_rules
        # @param signal_rules [Array] An instance of Array

      def signal_rules=(signal_rules)
        if signal_rules!=nil and !signal_rules.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: signal_rules EXPECTED TYPE: Array', nil, nil)
        end
        @signal_rules = signal_rules
        @key_modified['signal_rules'] = 1
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
