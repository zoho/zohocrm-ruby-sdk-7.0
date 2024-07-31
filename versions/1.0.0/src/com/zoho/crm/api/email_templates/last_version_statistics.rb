require_relative '../util/model'

module ZOHOCRMSDK
  module EmailTemplates
    class LastVersionStatistics
      include Util::Model

      # Creates an instance of LastVersionStatistics
      def initialize
        @tracked = nil
        @delivered = nil
        @opened = nil
        @bounced = nil
        @sent = nil
        @clicked = nil
        @key_modified = Hash.new
      end

        # The method to get the tracked
        # @return A Integer value

      def tracked
        @tracked
      end

        # The method to set the value to tracked
        # @param tracked [Integer] A Integer

      def tracked=(tracked)
        if tracked!=nil and !tracked.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tracked EXPECTED TYPE: Integer', nil, nil)
        end
        @tracked = tracked
        @key_modified['tracked'] = 1
      end

        # The method to get the delivered
        # @return A Integer value

      def delivered
        @delivered
      end

        # The method to set the value to delivered
        # @param delivered [Integer] A Integer

      def delivered=(delivered)
        if delivered!=nil and !delivered.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delivered EXPECTED TYPE: Integer', nil, nil)
        end
        @delivered = delivered
        @key_modified['delivered'] = 1
      end

        # The method to get the opened
        # @return A Integer value

      def opened
        @opened
      end

        # The method to set the value to opened
        # @param opened [Integer] A Integer

      def opened=(opened)
        if opened!=nil and !opened.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: opened EXPECTED TYPE: Integer', nil, nil)
        end
        @opened = opened
        @key_modified['opened'] = 1
      end

        # The method to get the bounced
        # @return A Integer value

      def bounced
        @bounced
      end

        # The method to set the value to bounced
        # @param bounced [Integer] A Integer

      def bounced=(bounced)
        if bounced!=nil and !bounced.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: bounced EXPECTED TYPE: Integer', nil, nil)
        end
        @bounced = bounced
        @key_modified['bounced'] = 1
      end

        # The method to get the sent
        # @return A Integer value

      def sent
        @sent
      end

        # The method to set the value to sent
        # @param sent [Integer] A Integer

      def sent=(sent)
        if sent!=nil and !sent.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sent EXPECTED TYPE: Integer', nil, nil)
        end
        @sent = sent
        @key_modified['sent'] = 1
      end

        # The method to get the clicked
        # @return A Integer value

      def clicked
        @clicked
      end

        # The method to set the value to clicked
        # @param clicked [Integer] A Integer

      def clicked=(clicked)
        if clicked!=nil and !clicked.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: clicked EXPECTED TYPE: Integer', nil, nil)
        end
        @clicked = clicked
        @key_modified['clicked'] = 1
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
