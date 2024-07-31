require_relative '../fields/fields'
require_relative '../profiles/profile'
require_relative '../util/model'

module ZOHOCRMSDK
  module Wizards
    class Actions
      include Util::Model

      # Creates an instance of Actions
      def initialize
        @id = nil
        @type = nil
        @segment = nil
        @fields = nil
        @field = nil
        @value = nil
        @exempted_profiles = nil
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

        # The method to get the type
        # @return A String value

      def type
        @type
      end

        # The method to set the value to type
        # @param type [String] A String

      def type=(type)
        if type!=nil and !type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
      end

        # The method to get the segment
        # @return An instance of Segment

      def segment
        @segment
      end

        # The method to set the value to segment
        # @param segment [Segment] An instance of Segment

      def segment=(segment)
        if segment!=nil and !segment.is_a? Segment
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: segment EXPECTED TYPE: Segment', nil, nil)
        end
        @segment = segment
        @key_modified['segment'] = 1
      end

        # The method to get the fields
        # @return An instance of Fields::Fields

      def fields
        @fields
      end

        # The method to set the value to fields
        # @param fields [Fields::Fields] An instance of Fields::Fields

      def fields=(fields)
        if fields!=nil and !fields.is_a? Fields::Fields
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: Fields', nil, nil)
        end
        @fields = fields
        @key_modified['fields'] = 1
      end

        # The method to get the field
        # @return An instance of Fields::Fields

      def field
        @field
      end

        # The method to set the value to field
        # @param field [Fields::Fields] An instance of Fields::Fields

      def field=(field)
        if field!=nil and !field.is_a? Fields::Fields
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field EXPECTED TYPE: Fields', nil, nil)
        end
        @field = field
        @key_modified['field'] = 1
      end

        # The method to get the value
        # @return A lang::Object value

      def value
        @value
      end

        # The method to set the value to value
        # @param value [lang::Object] A lang::Object

      def value=(value)
        @value = value
        @key_modified['value'] = 1
      end

        # The method to get the exempted_profiles
        # @return An instance of Array

      def exempted_profiles
        @exempted_profiles
      end

        # The method to set the value to exempted_profiles
        # @param exempted_profiles [Array] An instance of Array

      def exempted_profiles=(exempted_profiles)
        if exempted_profiles!=nil and !exempted_profiles.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: exempted_profiles EXPECTED TYPE: Array', nil, nil)
        end
        @exempted_profiles = exempted_profiles
        @key_modified['exempted_profiles'] = 1
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
