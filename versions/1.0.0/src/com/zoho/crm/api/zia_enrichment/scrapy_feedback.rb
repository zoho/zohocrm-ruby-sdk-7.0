require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaEnrichment
    class ScrapyFeedback
      include Util::Model

      # Creates an instance of ScrapyFeedback
      def initialize
        @enrich_id = nil
        @type = nil
        @feedback = nil
        @comment = nil
        @key_modified = Hash.new
      end

        # The method to get the enrich_id
        # @return An instance of Util::Choice

      def enrich_id
        @enrich_id
      end

        # The method to set the value to enrich_id
        # @param enrich_id [Util::Choice] An instance of Util::Choice

      def enrich_id=(enrich_id)
        if enrich_id!=nil and !enrich_id.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: enrich_id EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @enrich_id = enrich_id
        @key_modified['enrich_id'] = 1
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

        # The method to get the feedback
        # @return An instance of Util::Choice

      def feedback
        @feedback
      end

        # The method to set the value to feedback
        # @param feedback [Util::Choice] An instance of Util::Choice

      def feedback=(feedback)
        if feedback!=nil and !feedback.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: feedback EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @feedback = feedback
        @key_modified['feedback'] = 1
      end

        # The method to get the comment
        # @return A String value

      def comment
        @comment
      end

        # The method to set the value to comment
        # @param comment [String] A String

      def comment=(comment)
        if comment!=nil and !comment.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: comment EXPECTED TYPE: String', nil, nil)
        end
        @comment = comment
        @key_modified['comment'] = 1
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
