require_relative '../record/record'
require_relative '../util/model'

module ZOHOCRMSDK
  module MassConvert
    class BodyWrapper
      include Util::Model

      # Creates an instance of BodyWrapper
      def initialize
        @deals = nil
        @move_attachments_to = nil
        @assign_to = nil
        @carry_over_tags = nil
        @related_modules = nil
        @portal_user_type = nil
        @ids = nil
        @apply_assignment_threshold = nil
        @key_modified = Hash.new
      end

        # The method to get the deals
        # @return An instance of Record::Record

      def deals
        @deals
      end

        # The method to set the value to deals
        # @param deals [Record::Record] An instance of Record::Record

      def deals=(deals)
        if deals!=nil and !deals.is_a? Record::Record
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deals EXPECTED TYPE: Record', nil, nil)
        end
        @deals = deals
        @key_modified['Deals'] = 1
      end

        # The method to get the move_attachments_to
        # @return An instance of MoveAttachmentsTo

      def move_attachments_to
        @move_attachments_to
      end

        # The method to set the value to move_attachments_to
        # @param move_attachments_to [MoveAttachmentsTo] An instance of MoveAttachmentsTo

      def move_attachments_to=(move_attachments_to)
        if move_attachments_to!=nil and !move_attachments_to.is_a? MoveAttachmentsTo
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: move_attachments_to EXPECTED TYPE: MoveAttachmentsTo', nil, nil)
        end
        @move_attachments_to = move_attachments_to
        @key_modified['move_attachments_to'] = 1
      end

        # The method to get the assign_to
        # @return An instance of AssignTo

      def assign_to
        @assign_to
      end

        # The method to set the value to assign_to
        # @param assign_to [AssignTo] An instance of AssignTo

      def assign_to=(assign_to)
        if assign_to!=nil and !assign_to.is_a? AssignTo
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: assign_to EXPECTED TYPE: AssignTo', nil, nil)
        end
        @assign_to = assign_to
        @key_modified['assign_to'] = 1
      end

        # The method to get the carry_over_tags
        # @return An instance of Array

      def carry_over_tags
        @carry_over_tags
      end

        # The method to set the value to carry_over_tags
        # @param carry_over_tags [Array] An instance of Array

      def carry_over_tags=(carry_over_tags)
        if carry_over_tags!=nil and !carry_over_tags.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: carry_over_tags EXPECTED TYPE: Array', nil, nil)
        end
        @carry_over_tags = carry_over_tags
        @key_modified['carry_over_tags'] = 1
      end

        # The method to get the related_modules
        # @return An instance of Array

      def related_modules
        @related_modules
      end

        # The method to set the value to related_modules
        # @param related_modules [Array] An instance of Array

      def related_modules=(related_modules)
        if related_modules!=nil and !related_modules.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_modules EXPECTED TYPE: Array', nil, nil)
        end
        @related_modules = related_modules
        @key_modified['related_modules'] = 1
      end

        # The method to get the portal_user_type
        # @return An instance of PortalUserType

      def portal_user_type
        @portal_user_type
      end

        # The method to set the value to portal_user_type
        # @param portal_user_type [PortalUserType] An instance of PortalUserType

      def portal_user_type=(portal_user_type)
        if portal_user_type!=nil and !portal_user_type.is_a? PortalUserType
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: portal_user_type EXPECTED TYPE: PortalUserType', nil, nil)
        end
        @portal_user_type = portal_user_type
        @key_modified['portal_user_type'] = 1
      end

        # The method to get the ids
        # @return An instance of Array

      def ids
        @ids
      end

        # The method to set the value to ids
        # @param ids [Array] An instance of Array

      def ids=(ids)
        if ids!=nil and !ids.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ids EXPECTED TYPE: Array', nil, nil)
        end
        @ids = ids
        @key_modified['ids'] = 1
      end

        # The method to get the apply_assignment_threshold
        # @return A Boolean value

      def apply_assignment_threshold
        @apply_assignment_threshold
      end

        # The method to set the value to apply_assignment_threshold
        # @param apply_assignment_threshold [Boolean] A Boolean

      def apply_assignment_threshold=(apply_assignment_threshold)
        if apply_assignment_threshold!=nil and ! [true, false].include?apply_assignment_threshold
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: apply_assignment_threshold EXPECTED TYPE: Boolean', nil, nil)
        end
        @apply_assignment_threshold = apply_assignment_threshold
        @key_modified['apply_assignment_threshold'] = 1
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
