require_relative '../util/model'

module ZOHOCRMSDK
  module CadencesExecution
    class AnalyticsAlert
      include Util::Model

      # Creates an instance of AnalyticsAlert
      def initialize
        @email_count = nil
        @cliked_email_count = nil
        @bounced_email_count = nil
        @replied_email_count = nil
        @email_spam_count = nil
        @sent_email_count = nil
        @unsent_email_count = nil
        @opened_email_count = nil
        @unsubscribed_email_count = nil
        @key_modified = Hash.new
      end

        # The method to get the email_count
        # @return A Integer value

      def email_count
        @email_count
      end

        # The method to set the value to email_count
        # @param email_count [Integer] A Integer

      def email_count=(email_count)
        if email_count!=nil and !email_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email_count EXPECTED TYPE: Integer', nil, nil)
        end
        @email_count = email_count
        @key_modified['email_count'] = 1
      end

        # The method to get the cliked_email_count
        # @return A Integer value

      def cliked_email_count
        @cliked_email_count
      end

        # The method to set the value to cliked_email_count
        # @param cliked_email_count [Integer] A Integer

      def cliked_email_count=(cliked_email_count)
        if cliked_email_count!=nil and !cliked_email_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cliked_email_count EXPECTED TYPE: Integer', nil, nil)
        end
        @cliked_email_count = cliked_email_count
        @key_modified['cliked_email_count'] = 1
      end

        # The method to get the bounced_email_count
        # @return A Integer value

      def bounced_email_count
        @bounced_email_count
      end

        # The method to set the value to bounced_email_count
        # @param bounced_email_count [Integer] A Integer

      def bounced_email_count=(bounced_email_count)
        if bounced_email_count!=nil and !bounced_email_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: bounced_email_count EXPECTED TYPE: Integer', nil, nil)
        end
        @bounced_email_count = bounced_email_count
        @key_modified['bounced_email_count'] = 1
      end

        # The method to get the replied_email_count
        # @return A Integer value

      def replied_email_count
        @replied_email_count
      end

        # The method to set the value to replied_email_count
        # @param replied_email_count [Integer] A Integer

      def replied_email_count=(replied_email_count)
        if replied_email_count!=nil and !replied_email_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: replied_email_count EXPECTED TYPE: Integer', nil, nil)
        end
        @replied_email_count = replied_email_count
        @key_modified['replied_email_count'] = 1
      end

        # The method to get the email_spam_count
        # @return A Integer value

      def email_spam_count
        @email_spam_count
      end

        # The method to set the value to email_spam_count
        # @param email_spam_count [Integer] A Integer

      def email_spam_count=(email_spam_count)
        if email_spam_count!=nil and !email_spam_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email_spam_count EXPECTED TYPE: Integer', nil, nil)
        end
        @email_spam_count = email_spam_count
        @key_modified['email_spam_count'] = 1
      end

        # The method to get the sent_email_count
        # @return A Integer value

      def sent_email_count
        @sent_email_count
      end

        # The method to set the value to sent_email_count
        # @param sent_email_count [Integer] A Integer

      def sent_email_count=(sent_email_count)
        if sent_email_count!=nil and !sent_email_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sent_email_count EXPECTED TYPE: Integer', nil, nil)
        end
        @sent_email_count = sent_email_count
        @key_modified['sent_email_count'] = 1
      end

        # The method to get the unsent_email_count
        # @return A Integer value

      def unsent_email_count
        @unsent_email_count
      end

        # The method to set the value to unsent_email_count
        # @param unsent_email_count [Integer] A Integer

      def unsent_email_count=(unsent_email_count)
        if unsent_email_count!=nil and !unsent_email_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: unsent_email_count EXPECTED TYPE: Integer', nil, nil)
        end
        @unsent_email_count = unsent_email_count
        @key_modified['unsent_email_count'] = 1
      end

        # The method to get the opened_email_count
        # @return A Integer value

      def opened_email_count
        @opened_email_count
      end

        # The method to set the value to opened_email_count
        # @param opened_email_count [Integer] A Integer

      def opened_email_count=(opened_email_count)
        if opened_email_count!=nil and !opened_email_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: opened_email_count EXPECTED TYPE: Integer', nil, nil)
        end
        @opened_email_count = opened_email_count
        @key_modified['opened_email_count'] = 1
      end

        # The method to get the unsubscribed_email_count
        # @return A Integer value

      def unsubscribed_email_count
        @unsubscribed_email_count
      end

        # The method to set the value to unsubscribed_email_count
        # @param unsubscribed_email_count [Integer] A Integer

      def unsubscribed_email_count=(unsubscribed_email_count)
        if unsubscribed_email_count!=nil and !unsubscribed_email_count.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: unsubscribed_email_count EXPECTED TYPE: Integer', nil, nil)
        end
        @unsubscribed_email_count = unsubscribed_email_count
        @key_modified['unsubscribed_email_count'] = 1
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
