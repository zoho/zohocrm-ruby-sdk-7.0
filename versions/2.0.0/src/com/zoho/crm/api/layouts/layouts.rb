require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module Layouts
    class Layouts
      include Util::Model

      # Creates an instance of Layouts
      def initialize
        @display_type = nil
        @api_name = nil
        @has_more_profiles = nil
        @created_time = nil
        @modified_time = nil
        @visible = nil
        @source = nil
        @id = nil
        @name = nil
        @display_label = nil
        @mode = nil
        @subform_properties = nil
        @status = nil
        @show_business_card = nil
        @generated_type = nil
        @created_for = nil
        @convert_mapping = nil
        @modified_by = nil
        @profiles = nil
        @created_by = nil
        @sections = nil
        @actions_allowed = nil
        @key_modified = Hash.new
      end

        # The method to get the display_type
        # @return A Integer value

      def display_type
        @display_type
      end

        # The method to set the value to display_type
        # @param display_type [Integer] A Integer

      def display_type=(display_type)
        if display_type!=nil and !display_type.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_type EXPECTED TYPE: Integer', nil, nil)
        end
        @display_type = display_type
        @key_modified['display_type'] = 1
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

        # The method to get the has_more_profiles
        # @return A Boolean value

      def has_more_profiles
        @has_more_profiles
      end

        # The method to set the value to has_more_profiles
        # @param has_more_profiles [Boolean] A Boolean

      def has_more_profiles=(has_more_profiles)
        if has_more_profiles!=nil and ! [true, false].include?has_more_profiles
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: has_more_profiles EXPECTED TYPE: Boolean', nil, nil)
        end
        @has_more_profiles = has_more_profiles
        @key_modified['has_more_profiles'] = 1
      end

        # The method to get the created_time
        # @return An instance of DateTime

      def created_time
        @created_time
      end

        # The method to set the value to created_time
        # @param created_time [DateTime] An instance of DateTime

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @created_time = created_time
        @key_modified['created_time'] = 1
      end

        # The method to get the modified_time
        # @return An instance of DateTime

      def modified_time
        @modified_time
      end

        # The method to set the value to modified_time
        # @param modified_time [DateTime] An instance of DateTime

      def modified_time=(modified_time)
        if modified_time!=nil and !modified_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @modified_time = modified_time
        @key_modified['modified_time'] = 1
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

        # The method to get the source
        # @return A String value

      def source
        @source
      end

        # The method to set the value to source
        # @param source [String] A String

      def source=(source)
        if source!=nil and !source.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: source EXPECTED TYPE: String', nil, nil)
        end
        @source = source
        @key_modified['source'] = 1
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

        # The method to get the mode
        # @return A String value

      def mode
        @mode
      end

        # The method to set the value to mode
        # @param mode [String] A String

      def mode=(mode)
        if mode!=nil and !mode.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mode EXPECTED TYPE: String', nil, nil)
        end
        @mode = mode
        @key_modified['mode'] = 1
      end

        # The method to get the subform_properties
        # @return An instance of SubformProperty

      def subform_properties
        @subform_properties
      end

        # The method to set the value to subform_properties
        # @param subform_properties [SubformProperty] An instance of SubformProperty

      def subform_properties=(subform_properties)
        if subform_properties!=nil and !subform_properties.is_a? SubformProperty
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: subform_properties EXPECTED TYPE: SubformProperty', nil, nil)
        end
        @subform_properties = subform_properties
        @key_modified['subform_properties'] = 1
      end

        # The method to get the status
        # @return A String value

      def status
        @status
      end

        # The method to set the value to status
        # @param status [String] A String

      def status=(status)
        if status!=nil and !status.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: String', nil, nil)
        end
        @status = status
        @key_modified['status'] = 1
      end

        # The method to get the show_business_card
        # @return A Boolean value

      def show_business_card
        @show_business_card
      end

        # The method to set the value to show_business_card
        # @param show_business_card [Boolean] A Boolean

      def show_business_card=(show_business_card)
        if show_business_card!=nil and ! [true, false].include?show_business_card
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show_business_card EXPECTED TYPE: Boolean', nil, nil)
        end
        @show_business_card = show_business_card
        @key_modified['show_business_card'] = 1
      end

        # The method to get the generated_type
        # @return A String value

      def generated_type
        @generated_type
      end

        # The method to set the value to generated_type
        # @param generated_type [String] A String

      def generated_type=(generated_type)
        if generated_type!=nil and !generated_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: generated_type EXPECTED TYPE: String', nil, nil)
        end
        @generated_type = generated_type
        @key_modified['generated_type'] = 1
      end

        # The method to get the created_for
        # @return An instance of Users::MinifiedUser

      def created_for
        @created_for
      end

        # The method to set the value to created_for
        # @param created_for [Users::MinifiedUser] An instance of Users::MinifiedUser

      def created_for=(created_for)
        if created_for!=nil and !created_for.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_for EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @created_for = created_for
        @key_modified['created_for'] = 1
      end

        # The method to get the convert_mapping
        # @return An instance of ConvertMapping

      def convert_mapping
        @convert_mapping
      end

        # The method to set the value to convert_mapping
        # @param convert_mapping [ConvertMapping] An instance of ConvertMapping

      def convert_mapping=(convert_mapping)
        if convert_mapping!=nil and !convert_mapping.is_a? ConvertMapping
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: convert_mapping EXPECTED TYPE: ConvertMapping', nil, nil)
        end
        @convert_mapping = convert_mapping
        @key_modified['convert_mapping'] = 1
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

        # The method to get the profiles
        # @return An instance of Array

      def profiles
        @profiles
      end

        # The method to set the value to profiles
        # @param profiles [Array] An instance of Array

      def profiles=(profiles)
        if profiles!=nil and !profiles.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: profiles EXPECTED TYPE: Array', nil, nil)
        end
        @profiles = profiles
        @key_modified['profiles'] = 1
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

        # The method to get the sections
        # @return An instance of Array

      def sections
        @sections
      end

        # The method to set the value to sections
        # @param sections [Array] An instance of Array

      def sections=(sections)
        if sections!=nil and !sections.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sections EXPECTED TYPE: Array', nil, nil)
        end
        @sections = sections
        @key_modified['sections'] = 1
      end

        # The method to get the actions_allowed
        # @return An instance of ActionsAllowed

      def actions_allowed
        @actions_allowed
      end

        # The method to set the value to actions_allowed
        # @param actions_allowed [ActionsAllowed] An instance of ActionsAllowed

      def actions_allowed=(actions_allowed)
        if actions_allowed!=nil and !actions_allowed.is_a? ActionsAllowed
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: actions_allowed EXPECTED TYPE: ActionsAllowed', nil, nil)
        end
        @actions_allowed = actions_allowed
        @key_modified['actions_allowed'] = 1
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
