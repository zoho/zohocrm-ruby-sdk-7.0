require_relative '../util/model'

module ZOHOCRMSDK
  module PrivacyPreference
    class Tpt
      include Util::Model

      # Creates an instance of Tpt
      def initialize
        @isenabled = nil
        @name = nil
        @issupported = nil
        @key_modified = Hash.new
      end

        # The method to get the isenabled
        # @return A String value

      def isenabled
        @isenabled
      end

        # The method to set the value to isenabled
        # @param isenabled [String] A String

      def isenabled=(isenabled)
        if isenabled!=nil and !isenabled.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: isenabled EXPECTED TYPE: String', nil, nil)
        end
        @isenabled = isenabled
        @key_modified['isEnabled'] = 1
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

        # The method to get the issupported
        # @return A String value

      def issupported
        @issupported
      end

        # The method to set the value to issupported
        # @param issupported [String] A String

      def issupported=(issupported)
        if issupported!=nil and !issupported.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: issupported EXPECTED TYPE: String', nil, nil)
        end
        @issupported = issupported
        @key_modified['isSupported'] = 1
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
