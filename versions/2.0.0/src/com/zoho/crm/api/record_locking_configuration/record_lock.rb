require_relative '../fields/minified_field'
require_relative '../users/minified_user'
require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module RecordLockingConfiguration
    class RecordLock
      include Util::Model

      # Creates an instance of RecordLock
      def initialize
        @created_time = nil
        @locked_for = nil
        @excluded_fields = nil
        @created_by = nil
        @feature_type = nil
        @locking_rules = nil
        @restricted_actions = nil
        @lock_for_portal_users = nil
        @modified_time = nil
        @restricted_communications = nil
        @system_defined = nil
        @modified_by = nil
        @id = nil
        @lock_type = nil
        @restricted_custom_buttons = nil
        @lock_excluded_profiles = nil
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

        # The method to get the locked_for
        # @return A String value

      def locked_for
        @locked_for
      end

        # The method to set the value to locked_for
        # @param locked_for [String] A String

      def locked_for=(locked_for)
        if locked_for!=nil and !locked_for.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: locked_for EXPECTED TYPE: String', nil, nil)
        end
        @locked_for = locked_for
        @key_modified['locked_for'] = 1
      end

        # The method to get the excluded_fields
        # @return An instance of Array

      def excluded_fields
        @excluded_fields
      end

        # The method to set the value to excluded_fields
        # @param excluded_fields [Array] An instance of Array

      def excluded_fields=(excluded_fields)
        if excluded_fields!=nil and !excluded_fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: excluded_fields EXPECTED TYPE: Array', nil, nil)
        end
        @excluded_fields = excluded_fields
        @key_modified['excluded_fields'] = 1
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

        # The method to get the feature_type
        # @return A String value

      def feature_type
        @feature_type
      end

        # The method to set the value to feature_type
        # @param feature_type [String] A String

      def feature_type=(feature_type)
        if feature_type!=nil and !feature_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: feature_type EXPECTED TYPE: String', nil, nil)
        end
        @feature_type = feature_type
        @key_modified['feature_type'] = 1
      end

        # The method to get the locking_rules
        # @return An instance of Array

      def locking_rules
        @locking_rules
      end

        # The method to set the value to locking_rules
        # @param locking_rules [Array] An instance of Array

      def locking_rules=(locking_rules)
        if locking_rules!=nil and !locking_rules.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: locking_rules EXPECTED TYPE: Array', nil, nil)
        end
        @locking_rules = locking_rules
        @key_modified['locking_rules'] = 1
      end

        # The method to get the restricted_actions
        # @return An instance of Array

      def restricted_actions
        @restricted_actions
      end

        # The method to set the value to restricted_actions
        # @param restricted_actions [Array] An instance of Array

      def restricted_actions=(restricted_actions)
        if restricted_actions!=nil and !restricted_actions.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restricted_actions EXPECTED TYPE: Array', nil, nil)
        end
        @restricted_actions = restricted_actions
        @key_modified['restricted_actions'] = 1
      end

        # The method to get the lock_for_portal_users
        # @return A Boolean value

      def lock_for_portal_users
        @lock_for_portal_users
      end

        # The method to set the value to lock_for_portal_users
        # @param lock_for_portal_users [Boolean] A Boolean

      def lock_for_portal_users=(lock_for_portal_users)
        if lock_for_portal_users!=nil and ! [true, false].include?lock_for_portal_users
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lock_for_portal_users EXPECTED TYPE: Boolean', nil, nil)
        end
        @lock_for_portal_users = lock_for_portal_users
        @key_modified['lock_for_portal_users'] = 1
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

        # The method to get the restricted_communications
        # @return An instance of Array

      def restricted_communications
        @restricted_communications
      end

        # The method to set the value to restricted_communications
        # @param restricted_communications [Array] An instance of Array

      def restricted_communications=(restricted_communications)
        if restricted_communications!=nil and !restricted_communications.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restricted_communications EXPECTED TYPE: Array', nil, nil)
        end
        @restricted_communications = restricted_communications
        @key_modified['restricted_communications'] = 1
      end

        # The method to get the system_defined
        # @return A Boolean value

      def system_defined
        @system_defined
      end

        # The method to set the value to system_defined
        # @param system_defined [Boolean] A Boolean

      def system_defined=(system_defined)
        if system_defined!=nil and ! [true, false].include?system_defined
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: system_defined EXPECTED TYPE: Boolean', nil, nil)
        end
        @system_defined = system_defined
        @key_modified['system_defined'] = 1
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

        # The method to get the lock_type
        # @return An instance of Util::Choice

      def lock_type
        @lock_type
      end

        # The method to set the value to lock_type
        # @param lock_type [Util::Choice] An instance of Util::Choice

      def lock_type=(lock_type)
        if lock_type!=nil and !lock_type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lock_type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @lock_type = lock_type
        @key_modified['lock_type'] = 1
      end

        # The method to get the restricted_custom_buttons
        # @return An instance of Array

      def restricted_custom_buttons
        @restricted_custom_buttons
      end

        # The method to set the value to restricted_custom_buttons
        # @param restricted_custom_buttons [Array] An instance of Array

      def restricted_custom_buttons=(restricted_custom_buttons)
        if restricted_custom_buttons!=nil and !restricted_custom_buttons.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restricted_custom_buttons EXPECTED TYPE: Array', nil, nil)
        end
        @restricted_custom_buttons = restricted_custom_buttons
        @key_modified['restricted_custom_buttons'] = 1
      end

        # The method to get the lock_excluded_profiles
        # @return An instance of Array

      def lock_excluded_profiles
        @lock_excluded_profiles
      end

        # The method to set the value to lock_excluded_profiles
        # @param lock_excluded_profiles [Array] An instance of Array

      def lock_excluded_profiles=(lock_excluded_profiles)
        if lock_excluded_profiles!=nil and !lock_excluded_profiles.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lock_excluded_profiles EXPECTED TYPE: Array', nil, nil)
        end
        @lock_excluded_profiles = lock_excluded_profiles
        @key_modified['lock_excluded_profiles'] = 1
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
