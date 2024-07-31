require_relative '../notifications/event'
require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module Notifications
    class Notification < Event
      include Util::Model

      # Creates an instance of Notification
      def initialize
        super
        @channel_id = nil
        @notify_url = nil
        @events = nil
        @token = nil
        @fields = nil
        @notify_on_related_action = nil
        @return_affected_field_values = nil
        @deleteevents = nil
        @resource_name = nil
        @channel_expiry = nil
        @resource_id = nil
        @resource_uri = nil
        @notification_condition = nil
        @key_modified = Hash.new
      end

        # The method to get the channel_id
        # @return A String value

      def channel_id
        @channel_id
      end

        # The method to set the value to channel_id
        # @param channel_id [String] A String

      def channel_id=(channel_id)
        if channel_id!=nil and !channel_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: channel_id EXPECTED TYPE: String', nil, nil)
        end
        @channel_id = channel_id
        @key_modified['channel_id'] = 1
      end

        # The method to get the notify_url
        # @return A String value

      def notify_url
        @notify_url
      end

        # The method to set the value to notify_url
        # @param notify_url [String] A String

      def notify_url=(notify_url)
        if notify_url!=nil and !notify_url.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: notify_url EXPECTED TYPE: String', nil, nil)
        end
        @notify_url = notify_url
        @key_modified['notify_url'] = 1
      end

        # The method to get the events
        # @return An instance of Array

      def events
        @events
      end

        # The method to set the value to events
        # @param events [Array] An instance of Array

      def events=(events)
        if events!=nil and !events.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: events EXPECTED TYPE: Array', nil, nil)
        end
        @events = events
        @key_modified['events'] = 1
      end

        # The method to get the token
        # @return A String value

      def token
        @token
      end

        # The method to set the value to token
        # @param token [String] A String

      def token=(token)
        if token!=nil and !token.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: token EXPECTED TYPE: String', nil, nil)
        end
        @token = token
        @key_modified['token'] = 1
      end

        # The method to get the fields
        # @return An instance of Hash

      def fields
        @fields
      end

        # The method to set the value to fields
        # @param fields [Hash] An instance of Hash

      def fields=(fields)
        if fields!=nil and !fields.is_a? Hash
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: Hash', nil, nil)
        end
        @fields = fields
        @key_modified['fields'] = 1
      end

        # The method to get the notify_on_related_action
        # @return A Boolean value

      def notify_on_related_action
        @notify_on_related_action
      end

        # The method to set the value to notify_on_related_action
        # @param notify_on_related_action [Boolean] A Boolean

      def notify_on_related_action=(notify_on_related_action)
        if notify_on_related_action!=nil and ! [true, false].include?notify_on_related_action
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: notify_on_related_action EXPECTED TYPE: Boolean', nil, nil)
        end
        @notify_on_related_action = notify_on_related_action
        @key_modified['notify_on_related_action'] = 1
      end

        # The method to get the return_affected_field_values
        # @return A Boolean value

      def return_affected_field_values
        @return_affected_field_values
      end

        # The method to set the value to return_affected_field_values
        # @param return_affected_field_values [Boolean] A Boolean

      def return_affected_field_values=(return_affected_field_values)
        if return_affected_field_values!=nil and ! [true, false].include?return_affected_field_values
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: return_affected_field_values EXPECTED TYPE: Boolean', nil, nil)
        end
        @return_affected_field_values = return_affected_field_values
        @key_modified['return_affected_field_values'] = 1
      end

        # The method to get the deleteevents
        # @return An instance of Util::Choice

      def deleteevents
        @deleteevents
      end

        # The method to set the value to deleteevents
        # @param deleteevents [Util::Choice] An instance of Util::Choice

      def deleteevents=(deleteevents)
        if deleteevents!=nil and !deleteevents.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deleteevents EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @deleteevents = deleteevents
        @key_modified['_delete_events'] = 1
      end

        # The method to get the resource_name
        # @return A String value

      def resource_name
        @resource_name
      end

        # The method to set the value to resource_name
        # @param resource_name [String] A String

      def resource_name=(resource_name)
        if resource_name!=nil and !resource_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: resource_name EXPECTED TYPE: String', nil, nil)
        end
        @resource_name = resource_name
        @key_modified['resource_name'] = 1
      end

        # The method to get the channel_expiry
        # @return An instance of DateTime

      def channel_expiry
        @channel_expiry
      end

        # The method to set the value to channel_expiry
        # @param channel_expiry [DateTime] An instance of DateTime

      def channel_expiry=(channel_expiry)
        if channel_expiry!=nil and !channel_expiry.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: channel_expiry EXPECTED TYPE: DateTime', nil, nil)
        end
        @channel_expiry = channel_expiry
        @key_modified['channel_expiry'] = 1
      end

        # The method to get the resource_id
        # @return A Integer value

      def resource_id
        @resource_id
      end

        # The method to set the value to resource_id
        # @param resource_id [Integer] A Integer

      def resource_id=(resource_id)
        if resource_id!=nil and !resource_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: resource_id EXPECTED TYPE: Integer', nil, nil)
        end
        @resource_id = resource_id
        @key_modified['resource_id'] = 1
      end

        # The method to get the resource_uri
        # @return A String value

      def resource_uri
        @resource_uri
      end

        # The method to set the value to resource_uri
        # @param resource_uri [String] A String

      def resource_uri=(resource_uri)
        if resource_uri!=nil and !resource_uri.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: resource_uri EXPECTED TYPE: String', nil, nil)
        end
        @resource_uri = resource_uri
        @key_modified['resource_uri'] = 1
      end

        # The method to get the notification_condition
        # @return An instance of Array

      def notification_condition
        @notification_condition
      end

        # The method to set the value to notification_condition
        # @param notification_condition [Array] An instance of Array

      def notification_condition=(notification_condition)
        if notification_condition!=nil and !notification_condition.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: notification_condition EXPECTED TYPE: Array', nil, nil)
        end
        @notification_condition = notification_condition
        @key_modified['notification_condition'] = 1
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
