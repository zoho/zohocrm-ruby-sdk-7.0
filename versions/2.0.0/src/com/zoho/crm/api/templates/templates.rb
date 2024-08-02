require_relative '../util/model'

module ZOHOCRMSDK
  module Templates
    class Templates
      include Util::Model

      # Creates an instance of Templates
      def initialize
        @folder = nil
        @modified_by = nil
        @module_1 = nil
        @modified_time = nil
        @subject = nil
        @name = nil
        @consent_linked = nil
        @favourite = nil
        @attachment_present = nil
        @id = nil
        @key_modified = Hash.new
      end

        # The method to get the folder
        # @return An instance of Folder

      def folder
        @folder
      end

        # The method to set the value to folder
        # @param folder [Folder] An instance of Folder

      def folder=(folder)
        if folder!=nil and !folder.is_a? Folder
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: folder EXPECTED TYPE: Folder', nil, nil)
        end
        @folder = folder
        @key_modified['folder'] = 1
      end

        # The method to get the modified_by
        # @return An instance of Folder

      def modified_by
        @modified_by
      end

        # The method to set the value to modified_by
        # @param modified_by [Folder] An instance of Folder

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? Folder
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: Folder', nil, nil)
        end
        @modified_by = modified_by
        @key_modified['modified_by'] = 1
      end

        # The method to get the module
        # @return A String value

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [String] A String

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the modified_time
        # @return An instance of DateTime

      def modified_time
        @modified_time
      end

        # The method to set the value to modified_time
        # @param modified_time [DateTime] An instance of DateTime

      def modified_time=(modified_time)
        if modified_time!=nil and !modified_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @modified_time = modified_time
        @key_modified['modified_time'] = 1
      end

        # The method to get the subject
        # @return A String value

      def subject
        @subject
      end

        # The method to set the value to subject
        # @param subject [String] A String

      def subject=(subject)
        if subject!=nil and !subject.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: subject EXPECTED TYPE: String', nil, nil)
        end
        @subject = subject
        @key_modified['subject'] = 1
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

        # The method to get the consent_linked
        # @return A Boolean value

      def consent_linked
        @consent_linked
      end

        # The method to set the value to consent_linked
        # @param consent_linked [Boolean] A Boolean

      def consent_linked=(consent_linked)
        if consent_linked!=nil and ! [true, false].include?consent_linked
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: consent_linked EXPECTED TYPE: Boolean', nil, nil)
        end
        @consent_linked = consent_linked
        @key_modified['consent_linked'] = 1
      end

        # The method to get the favourite
        # @return A Boolean value

      def favourite
        @favourite
      end

        # The method to set the value to favourite
        # @param favourite [Boolean] A Boolean

      def favourite=(favourite)
        if favourite!=nil and ! [true, false].include?favourite
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: favourite EXPECTED TYPE: Boolean', nil, nil)
        end
        @favourite = favourite
        @key_modified['favourite'] = 1
      end

        # The method to get the attachment_present
        # @return A Boolean value

      def attachment_present
        @attachment_present
      end

        # The method to set the value to attachment_present
        # @param attachment_present [Boolean] A Boolean

      def attachment_present=(attachment_present)
        if attachment_present!=nil and ! [true, false].include?attachment_present
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attachment_present EXPECTED TYPE: Boolean', nil, nil)
        end
        @attachment_present = attachment_present
        @key_modified['attachment_present'] = 1
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
