require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaPeopleEnrichment
    class CompanyInfo
      include Util::Model

      # Creates an instance of CompanyInfo
      def initialize
        @name = nil
        @industries = nil
        @experiences = nil
        @key_modified = Hash.new
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

        # The method to get the industries
        # @return An instance of Array

      def industries
        @industries
      end

        # The method to set the value to industries
        # @param industries [Array] An instance of Array

      def industries=(industries)
        if industries!=nil and !industries.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: industries EXPECTED TYPE: Array', nil, nil)
        end
        @industries = industries
        @key_modified['industries'] = 1
      end

        # The method to get the experiences
        # @return An instance of Array

      def experiences
        @experiences
      end

        # The method to set the value to experiences
        # @param experiences [Array] An instance of Array

      def experiences=(experiences)
        if experiences!=nil and !experiences.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: experiences EXPECTED TYPE: Array', nil, nil)
        end
        @experiences = experiences
        @key_modified['experiences'] = 1
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
