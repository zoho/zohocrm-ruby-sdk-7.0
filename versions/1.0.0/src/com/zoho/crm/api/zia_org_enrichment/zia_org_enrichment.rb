require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaOrgEnrichment
    class ZiaOrgEnrichment
      include Util::Model

      # Creates an instance of ZiaOrgEnrichment
      def initialize
        @enriched_data = nil
        @created_time = nil
        @id = nil
        @created_by = nil
        @status = nil
        @enrich_based_on = nil
        @key_modified = Hash.new
      end

        # The method to get the enriched_data
        # @return An instance of EnrichedData

      def enriched_data
        @enriched_data
      end

        # The method to set the value to enriched_data
        # @param enriched_data [EnrichedData] An instance of EnrichedData

      def enriched_data=(enriched_data)
        if enriched_data!=nil and !enriched_data.is_a? EnrichedData
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: enriched_data EXPECTED TYPE: EnrichedData', nil, nil)
        end
        @enriched_data = enriched_data
        @key_modified['enriched_data'] = 1
      end

        # The method to get the created_time
        # @return A String value

      def created_time
        @created_time
      end

        # The method to set the value to created_time
        # @param created_time [String] A String

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: String', nil, nil)
        end
        @created_time = created_time
        @key_modified['created_time'] = 1
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

        # The method to get the status
        # @return A String value

      def status
        @status
      end

        # The method to set the value to status
        # @param status [String] A String

      def status=(status)
        if status!=nil and !status.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: String', nil, nil)
        end
        @status = status
        @key_modified['status'] = 1
      end

        # The method to get the enrich_based_on
        # @return An instance of EnrichBasedOn

      def enrich_based_on
        @enrich_based_on
      end

        # The method to set the value to enrich_based_on
        # @param enrich_based_on [EnrichBasedOn] An instance of EnrichBasedOn

      def enrich_based_on=(enrich_based_on)
        if enrich_based_on!=nil and !enrich_based_on.is_a? EnrichBasedOn
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: enrich_based_on EXPECTED TYPE: EnrichBasedOn', nil, nil)
        end
        @enrich_based_on = enrich_based_on
        @key_modified['enrich_based_on'] = 1
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
