require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module Modules
    class SharingProperties
      include Util::Model

      # Creates an instance of SharingProperties
      def initialize
        @scheduler_status = nil
        @share_preference_enabled = nil
        @share_permission = nil
        @key_modified = Hash.new
      end

        # The method to get the scheduler_status
        # @return A String value

      def scheduler_status
        @scheduler_status
      end

        # The method to set the value to scheduler_status
        # @param scheduler_status [String] A String

      def scheduler_status=(scheduler_status)
        if scheduler_status!=nil and !scheduler_status.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: scheduler_status EXPECTED TYPE: String', nil, nil)
        end
        @scheduler_status = scheduler_status
        @key_modified['scheduler_status'] = 1
      end

        # The method to get the share_preference_enabled
        # @return A Boolean value

      def share_preference_enabled
        @share_preference_enabled
      end

        # The method to set the value to share_preference_enabled
        # @param share_preference_enabled [Boolean] A Boolean

      def share_preference_enabled=(share_preference_enabled)
        if share_preference_enabled!=nil and ! [true, false].include?share_preference_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: share_preference_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @share_preference_enabled = share_preference_enabled
        @key_modified['share_preference_enabled'] = 1
      end

        # The method to get the share_permission
        # @return An instance of Util::Choice

      def share_permission
        @share_permission
      end

        # The method to set the value to share_permission
        # @param share_permission [Util::Choice] An instance of Util::Choice

      def share_permission=(share_permission)
        if share_permission!=nil and !share_permission.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: share_permission EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @share_permission = share_permission
        @key_modified['share_permission'] = 1
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
