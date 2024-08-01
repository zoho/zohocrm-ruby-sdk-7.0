require_relative '../util/model'

module ZOHOCRMSDK
  module UsersUnavailability
    class UsersUnavailability
      include Util::Model

      # Creates an instance of UsersUnavailability
      def initialize
        @service = nil
        @title = nil
        @all_day = nil
        @tp_calendar_id = nil
        @tp_event_id = nil
        @comments = nil
        @from = nil
        @id = nil
        @to = nil
        @user = nil
        @key_modified = Hash.new
      end

        # The method to get the service
        # @return A String value

      def service
        @service
      end

        # The method to set the value to service
        # @param service [String] A String

      def service=(service)
        if service!=nil and !service.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: service EXPECTED TYPE: String', nil, nil)
        end
        @service = service
        @key_modified['service'] = 1
      end

        # The method to get the title
        # @return A String value

      def title
        @title
      end

        # The method to set the value to title
        # @param title [String] A String

      def title=(title)
        if title!=nil and !title.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: title EXPECTED TYPE: String', nil, nil)
        end
        @title = title
        @key_modified['title'] = 1
      end

        # The method to get the all_day
        # @return A Boolean value

      def all_day
        @all_day
      end

        # The method to set the value to all_day
        # @param all_day [Boolean] A Boolean

      def all_day=(all_day)
        if all_day!=nil and ! [true, false].include?all_day
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: all_day EXPECTED TYPE: Boolean', nil, nil)
        end
        @all_day = all_day
        @key_modified['all_day'] = 1
      end

        # The method to get the tp_calendar_id
        # @return A String value

      def tp_calendar_id
        @tp_calendar_id
      end

        # The method to set the value to tp_calendar_id
        # @param tp_calendar_id [String] A String

      def tp_calendar_id=(tp_calendar_id)
        if tp_calendar_id!=nil and !tp_calendar_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tp_calendar_id EXPECTED TYPE: String', nil, nil)
        end
        @tp_calendar_id = tp_calendar_id
        @key_modified['tp_calendar_id'] = 1
      end

        # The method to get the tp_event_id
        # @return A String value

      def tp_event_id
        @tp_event_id
      end

        # The method to set the value to tp_event_id
        # @param tp_event_id [String] A String

      def tp_event_id=(tp_event_id)
        if tp_event_id!=nil and !tp_event_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tp_event_id EXPECTED TYPE: String', nil, nil)
        end
        @tp_event_id = tp_event_id
        @key_modified['tp_event_id'] = 1
      end

        # The method to get the comments
        # @return A String value

      def comments
        @comments
      end

        # The method to set the value to comments
        # @param comments [String] A String

      def comments=(comments)
        if comments!=nil and !comments.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: comments EXPECTED TYPE: String', nil, nil)
        end
        @comments = comments
        @key_modified['comments'] = 1
      end

        # The method to get the from
        # @return An instance of DateTime

      def from
        @from
      end

        # The method to set the value to from
        # @param from [DateTime] An instance of DateTime

      def from=(from)
        if from!=nil and !from.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from EXPECTED TYPE: DateTime', nil, nil)
        end
        @from = from
        @key_modified['from'] = 1
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

        # The method to get the to
        # @return An instance of DateTime

      def to
        @to
      end

        # The method to set the value to to
        # @param to [DateTime] An instance of DateTime

      def to=(to)
        if to!=nil and !to.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: to EXPECTED TYPE: DateTime', nil, nil)
        end
        @to = to
        @key_modified['to'] = 1
      end

        # The method to get the user
        # @return An instance of User

      def user
        @user
      end

        # The method to set the value to user
        # @param user [User] An instance of User

      def user=(user)
        if user!=nil and !user.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user EXPECTED TYPE: User', nil, nil)
        end
        @user = user
        @key_modified['user'] = 1
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
