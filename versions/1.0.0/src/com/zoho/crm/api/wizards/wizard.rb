require_relative '../modules/modules'
require_relative '../profiles/profile'
require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class Wizard
      include Util::Model

      # Creates an instance of Wizard
      def initialize
        @created_time = nil
        @modified_time = nil
        @module_1 = nil
        @name = nil
        @modified_by = nil
        @profiles = nil
        @active = nil
        @containers = nil
        @id = nil
        @created_by = nil
        @portal_user_types = nil
        @exempted_portal_user_types = nil
        @parent_wizard = nil
        @draft = nil
        @key_modified = Hash.new
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

        # The method to get the containers
        # @return An instance of Array

      def containers
        @containers
      end

        # The method to set the value to containers
        # @param containers [Array] An instance of Array

      def containers=(containers)
        if containers!=nil and !containers.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: containers EXPECTED TYPE: Array', nil, nil)
        end
        @containers = containers
        @key_modified['containers'] = 1
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

        # The method to get the portal_user_types
        # @return An instance of Array

      def portal_user_types
        @portal_user_types
      end

        # The method to set the value to portal_user_types
        # @param portal_user_types [Array] An instance of Array

      def portal_user_types=(portal_user_types)
        if portal_user_types!=nil and !portal_user_types.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: portal_user_types EXPECTED TYPE: Array', nil, nil)
        end
        @portal_user_types = portal_user_types
        @key_modified['portal_user_types'] = 1
      end

        # The method to get the exempted_portal_user_types
        # @return An instance of Array

      def exempted_portal_user_types
        @exempted_portal_user_types
      end

        # The method to set the value to exempted_portal_user_types
        # @param exempted_portal_user_types [Array] An instance of Array

      def exempted_portal_user_types=(exempted_portal_user_types)
        if exempted_portal_user_types!=nil and !exempted_portal_user_types.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: exempted_portal_user_types EXPECTED TYPE: Array', nil, nil)
        end
        @exempted_portal_user_types = exempted_portal_user_types
        @key_modified['exempted_portal_user_types'] = 1
      end

        # The method to get the parent_wizard
        # @return An instance of Wizard

      def parent_wizard
        @parent_wizard
      end

        # The method to set the value to parent_wizard
        # @param parent_wizard [Wizard] An instance of Wizard

      def parent_wizard=(parent_wizard)
        if parent_wizard!=nil and !parent_wizard.is_a? Wizard
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: parent_wizard EXPECTED TYPE: Wizard', nil, nil)
        end
        @parent_wizard = parent_wizard
        @key_modified['parent_wizard'] = 1
      end

        # The method to get the draft
        # @return A Boolean value

      def draft
        @draft
      end

        # The method to set the value to draft
        # @param draft [Boolean] A Boolean

      def draft=(draft)
        if draft!=nil and ! [true, false].include?draft
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: draft EXPECTED TYPE: Boolean', nil, nil)
        end
        @draft = draft
        @key_modified['draft'] = 1
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
