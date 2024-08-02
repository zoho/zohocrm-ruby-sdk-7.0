require_relative '../util/model'

module ZOHOCRMSDK
  module Timelines
    class Timeline
      include Util::Model

      # Creates an instance of Timeline
      def initialize
        @audited_time = nil
        @action = nil
        @id = nil
        @source = nil
        @extension = nil
        @type = nil
        @done_by = nil
        @related_record = nil
        @automation_details = nil
        @record = nil
        @field_history = nil
        @key_modified = Hash.new
      end

        # The method to get the audited_time
        # @return An instance of DateTime

      def audited_time
        @audited_time
      end

        # The method to set the value to audited_time
        # @param audited_time [DateTime] An instance of DateTime

      def audited_time=(audited_time)
        if audited_time!=nil and !audited_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: audited_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @audited_time = audited_time
        @key_modified['audited_time'] = 1
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

        # The method to get the extension
        # @return A String value

      def extension
        @extension
      end

        # The method to set the value to extension
        # @param extension [String] A String

      def extension=(extension)
        if extension!=nil and !extension.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: extension EXPECTED TYPE: String', nil, nil)
        end
        @extension = extension
        @key_modified['extension'] = 1
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

        # The method to get the done_by
        # @return An instance of NameIdStructure

      def done_by
        @done_by
      end

        # The method to set the value to done_by
        # @param done_by [NameIdStructure] An instance of NameIdStructure

      def done_by=(done_by)
        if done_by!=nil and !done_by.is_a? NameIdStructure
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: done_by EXPECTED TYPE: NameIdStructure', nil, nil)
        end
        @done_by = done_by
        @key_modified['done_by'] = 1
      end

        # The method to get the related_record
        # @return An instance of RelatedRecord

      def related_record
        @related_record
      end

        # The method to set the value to related_record
        # @param related_record [RelatedRecord] An instance of RelatedRecord

      def related_record=(related_record)
        if related_record!=nil and !related_record.is_a? RelatedRecord
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_record EXPECTED TYPE: RelatedRecord', nil, nil)
        end
        @related_record = related_record
        @key_modified['related_record'] = 1
      end

        # The method to get the automation_details
        # @return An instance of AutomationDetail

      def automation_details
        @automation_details
      end

        # The method to set the value to automation_details
        # @param automation_details [AutomationDetail] An instance of AutomationDetail

      def automation_details=(automation_details)
        if automation_details!=nil and !automation_details.is_a? AutomationDetail
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: automation_details EXPECTED TYPE: AutomationDetail', nil, nil)
        end
        @automation_details = automation_details
        @key_modified['automation_details'] = 1
      end

        # The method to get the record
        # @return An instance of Record

      def record
        @record
      end

        # The method to set the value to record
        # @param record [Record] An instance of Record

      def record=(record)
        if record!=nil and !record.is_a? Record
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record EXPECTED TYPE: Record', nil, nil)
        end
        @record = record
        @key_modified['record'] = 1
      end

        # The method to get the field_history
        # @return An instance of Array

      def field_history
        @field_history
      end

        # The method to set the value to field_history
        # @param field_history [Array] An instance of Array

      def field_history=(field_history)
        if field_history!=nil and !field_history.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_history EXPECTED TYPE: Array', nil, nil)
        end
        @field_history = field_history
        @key_modified['field_history'] = 1
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
