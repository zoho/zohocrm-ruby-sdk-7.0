require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaPeopleEnrichment
    class Social
      include Util::Model

      # Creates an instance of Social
      def initialize
        @twitter = nil
        @facebook = nil
        @linkedin = nil
        @key_modified = Hash.new
      end

        # The method to get the twitter
        # @return A String value

      def twitter
        @twitter
      end

        # The method to set the value to twitter
        # @param twitter [String] A String

      def twitter=(twitter)
        if twitter!=nil and !twitter.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: twitter EXPECTED TYPE: String', nil, nil)
        end
        @twitter = twitter
        @key_modified['twitter'] = 1
      end

        # The method to get the facebook
        # @return A String value

      def facebook
        @facebook
      end

        # The method to set the value to facebook
        # @param facebook [String] A String

      def facebook=(facebook)
        if facebook!=nil and !facebook.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: facebook EXPECTED TYPE: String', nil, nil)
        end
        @facebook = facebook
        @key_modified['facebook'] = 1
      end

        # The method to get the linkedin
        # @return A String value

      def linkedin
        @linkedin
      end

        # The method to set the value to linkedin
        # @param linkedin [String] A String

      def linkedin=(linkedin)
        if linkedin!=nil and !linkedin.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: linkedin EXPECTED TYPE: String', nil, nil)
        end
        @linkedin = linkedin
        @key_modified['linkedin'] = 1
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
