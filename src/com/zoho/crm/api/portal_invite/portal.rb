require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module PortalInvite
    class Portal
      include Util::Model

      # Creates an instance of Portal
      def initialize
        @id = nil
        @user_type_id = nil
        @type = nil
        @language = nil
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

        # The method to get the user_type_id
        # @return A Integer value

      def user_type_id
        @user_type_id
      end

        # The method to set the value to user_type_id
        # @param user_type_id [Integer] A Integer

      def user_type_id=(user_type_id)
        if user_type_id!=nil and !user_type_id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_type_id EXPECTED TYPE: Integer', nil, nil)
        end
        @user_type_id = user_type_id
        @key_modified['user_type_id'] = 1
      end

        # The method to get the type
        # @return An instance of Util::Choice

      def type
        @type
      end

        # The method to set the value to type
        # @param type [Util::Choice] An instance of Util::Choice

      def type=(type)
        if type!=nil and !type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the language
        # @return An instance of Util::Choice

      def language
        @language
      end

        # The method to set the value to language
        # @param language [Util::Choice] An instance of Util::Choice

      def language=(language)
        if language!=nil and !language.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: language EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @language = language
        @key_modified['language'] = 1
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
