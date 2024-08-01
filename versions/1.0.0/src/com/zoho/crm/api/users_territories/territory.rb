require_relative '../util/model'

module ZOHOCRMSDK
  module UsersTerritories
    class Territory
      include Util::Model

      # Creates an instance of Territory
      def initialize
        @id = nil
        @manager = nil
        @reporting_to = nil
        @name = nil
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

        # The method to get the manager
        # @return An instance of Manager

      def manager
        @manager
      end

        # The method to set the value to manager
        # @param manager [Manager] An instance of Manager

      def manager=(manager)
        if manager!=nil and !manager.is_a? Manager
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: manager EXPECTED TYPE: Manager', nil, nil)
        end
        @manager = manager
        @key_modified['Manager'] = 1
      end

        # The method to get the reporting_to
        # @return An instance of Manager

      def reporting_to
        @reporting_to
      end

        # The method to set the value to reporting_to
        # @param reporting_to [Manager] An instance of Manager

      def reporting_to=(reporting_to)
        if reporting_to!=nil and !reporting_to.is_a? Manager
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reporting_to EXPECTED TYPE: Manager', nil, nil)
        end
        @reporting_to = reporting_to
        @key_modified['Reporting_To'] = 1
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
        @key_modified['Name'] = 1
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
