require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module UnsubscribeLinks
    class UnsubscribeLinks
      include Util::Model

      # Creates an instance of UnsubscribeLinks
      def initialize
        @id = nil
        @name = nil
        @page_type = nil
        @custom_location_url = nil
        @standard_page_message = nil
        @submission_action_type = nil
        @submission_message = nil
        @submission_redirect_url = nil
        @location_url_type = nil
        @action_on_unsubscribe = nil
        @created_by = nil
        @modified_by = nil
        @modified_time = nil
        @created_time = nil
        @landing_url = nil
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

        # The method to get the page_type
        # @return An instance of Util::Choice

      def page_type
        @page_type
      end

        # The method to set the value to page_type
        # @param page_type [Util::Choice] An instance of Util::Choice

      def page_type=(page_type)
        if page_type!=nil and !page_type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: page_type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @page_type = page_type
        @key_modified['page_type'] = 1
      end

        # The method to get the custom_location_url
        # @return A String value

      def custom_location_url
        @custom_location_url
      end

        # The method to set the value to custom_location_url
        # @param custom_location_url [String] A String

      def custom_location_url=(custom_location_url)
        if custom_location_url!=nil and !custom_location_url.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: custom_location_url EXPECTED TYPE: String', nil, nil)
        end
        @custom_location_url = custom_location_url
        @key_modified['custom_location_url'] = 1
      end

        # The method to get the standard_page_message
        # @return A String value

      def standard_page_message
        @standard_page_message
      end

        # The method to set the value to standard_page_message
        # @param standard_page_message [String] A String

      def standard_page_message=(standard_page_message)
        if standard_page_message!=nil and !standard_page_message.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: standard_page_message EXPECTED TYPE: String', nil, nil)
        end
        @standard_page_message = standard_page_message
        @key_modified['standard_page_message'] = 1
      end

        # The method to get the submission_action_type
        # @return An instance of Util::Choice

      def submission_action_type
        @submission_action_type
      end

        # The method to set the value to submission_action_type
        # @param submission_action_type [Util::Choice] An instance of Util::Choice

      def submission_action_type=(submission_action_type)
        if submission_action_type!=nil and !submission_action_type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: submission_action_type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @submission_action_type = submission_action_type
        @key_modified['submission_action_type'] = 1
      end

        # The method to get the submission_message
        # @return A String value

      def submission_message
        @submission_message
      end

        # The method to set the value to submission_message
        # @param submission_message [String] A String

      def submission_message=(submission_message)
        if submission_message!=nil and !submission_message.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: submission_message EXPECTED TYPE: String', nil, nil)
        end
        @submission_message = submission_message
        @key_modified['submission_message'] = 1
      end

        # The method to get the submission_redirect_url
        # @return A String value

      def submission_redirect_url
        @submission_redirect_url
      end

        # The method to set the value to submission_redirect_url
        # @param submission_redirect_url [String] A String

      def submission_redirect_url=(submission_redirect_url)
        if submission_redirect_url!=nil and !submission_redirect_url.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: submission_redirect_url EXPECTED TYPE: String', nil, nil)
        end
        @submission_redirect_url = submission_redirect_url
        @key_modified['submission_redirect_url'] = 1
      end

        # The method to get the location_url_type
        # @return A String value

      def location_url_type
        @location_url_type
      end

        # The method to set the value to location_url_type
        # @param location_url_type [String] A String

      def location_url_type=(location_url_type)
        if location_url_type!=nil and !location_url_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: location_url_type EXPECTED TYPE: String', nil, nil)
        end
        @location_url_type = location_url_type
        @key_modified['location_url_type'] = 1
      end

        # The method to get the action_on_unsubscribe
        # @return A String value

      def action_on_unsubscribe
        @action_on_unsubscribe
      end

        # The method to set the value to action_on_unsubscribe
        # @param action_on_unsubscribe [String] A String

      def action_on_unsubscribe=(action_on_unsubscribe)
        if action_on_unsubscribe!=nil and !action_on_unsubscribe.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: action_on_unsubscribe EXPECTED TYPE: String', nil, nil)
        end
        @action_on_unsubscribe = action_on_unsubscribe
        @key_modified['action_on_unsubscribe'] = 1
      end

        # The method to get the created_by
        # @return An instance of User

      def created_by
        @created_by
      end

        # The method to set the value to created_by
        # @param created_by [User] An instance of User

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: User', nil, nil)
        end
        @created_by = created_by
        @key_modified['created_by'] = 1
      end

        # The method to get the modified_by
        # @return An instance of User

      def modified_by
        @modified_by
      end

        # The method to set the value to modified_by
        # @param modified_by [User] An instance of User

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: User', nil, nil)
        end
        @modified_by = modified_by
        @key_modified['modified_by'] = 1
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

        # The method to get the landing_url
        # @return A String value

      def landing_url
        @landing_url
      end

        # The method to set the value to landing_url
        # @param landing_url [String] A String

      def landing_url=(landing_url)
        if landing_url!=nil and !landing_url.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: landing_url EXPECTED TYPE: String', nil, nil)
        end
        @landing_url = landing_url
        @key_modified['landing_url'] = 1
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
