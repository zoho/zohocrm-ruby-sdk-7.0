require_relative '../inventory_templates/folder'
require_relative '../inventory_templates/inventory_templates'
require_relative '../inventory_templates/module_map'
require_relative '../inventory_templates/user'
require_relative '../send_mail/template'
require_relative '../util/model'

module ZOHOCRMSDK
  module EmailTemplates
require_relative '../send_mail/template'

    class EmailTemplate < InventoryTemplates::InventoryTemplates
      include Util::Model
      include SendMail::Template

      # Creates an instance of EmailTemplate
      def initialize
        super
        @attachments = nil
        @subject = nil
        @associated = nil
        @consent_linked = nil
        @description = nil
        @last_version_statistics = nil
        @category = nil
        @created_time = nil
        @modified_time = nil
        @last_usage_time = nil
        @folder = nil
        @module_1 = nil
        @created_by = nil
        @modified_by = nil
        @name = nil
        @id = nil
        @editor_mode = nil
        @favorite = nil
        @content = nil
        @active = nil
        @mail_content = nil
        @key_modified = Hash.new
      end

        # The method to get the attachments
        # @return An instance of Array

      def attachments
        @attachments
      end

        # The method to set the value to attachments
        # @param attachments [Array] An instance of Array

      def attachments=(attachments)
        if attachments!=nil and !attachments.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attachments EXPECTED TYPE: Array', nil, nil)
        end
        @attachments = attachments
        @key_modified['attachments'] = 1
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

        # The method to get the associated
        # @return A Boolean value

      def associated
        @associated
      end

        # The method to set the value to associated
        # @param associated [Boolean] A Boolean

      def associated=(associated)
        if associated!=nil and ! [true, false].include?associated
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: associated EXPECTED TYPE: Boolean', nil, nil)
        end
        @associated = associated
        @key_modified['associated'] = 1
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

        # The method to get the description
        # @return A String value

      def description
        @description
      end

        # The method to set the value to description
        # @param description [String] A String

      def description=(description)
        if description!=nil and !description.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: String', nil, nil)
        end
        @description = description
        @key_modified['description'] = 1
      end

        # The method to get the last_version_statistics
        # @return An instance of LastVersionStatistics

      def last_version_statistics
        @last_version_statistics
      end

        # The method to set the value to last_version_statistics
        # @param last_version_statistics [LastVersionStatistics] An instance of LastVersionStatistics

      def last_version_statistics=(last_version_statistics)
        if last_version_statistics!=nil and !last_version_statistics.is_a? LastVersionStatistics
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: last_version_statistics EXPECTED TYPE: LastVersionStatistics', nil, nil)
        end
        @last_version_statistics = last_version_statistics
        @key_modified['last_version_statistics'] = 1
      end

        # The method to get the category
        # @return A String value

      def category
        @category
      end

        # The method to set the value to category
        # @param category [String] A String

      def category=(category)
        if category!=nil and !category.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: category EXPECTED TYPE: String', nil, nil)
        end
        @category = category
        @key_modified['category'] = 1
      end

        # The method to get the created_time
        # @return An instance of DateTime

      def created_time
        @created_time
      end

        # The method to set the value to created_time
        # @param created_time [DateTime] An instance of DateTime

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @created_time = created_time
        @key_modified['created_time'] = 1
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

        # The method to get the last_usage_time
        # @return An instance of DateTime

      def last_usage_time
        @last_usage_time
      end

        # The method to set the value to last_usage_time
        # @param last_usage_time [DateTime] An instance of DateTime

      def last_usage_time=(last_usage_time)
        if last_usage_time!=nil and !last_usage_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: last_usage_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @last_usage_time = last_usage_time
        @key_modified['last_usage_time'] = 1
      end

        # The method to get the folder
        # @return An instance of InventoryTemplates::Folder

      def folder
        @folder
      end

        # The method to set the value to folder
        # @param folder [InventoryTemplates::Folder] An instance of InventoryTemplates::Folder

      def folder=(folder)
        if folder!=nil and !folder.is_a? InventoryTemplates::Folder
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: folder EXPECTED TYPE: Folder', nil, nil)
        end
        @folder = folder
        @key_modified['folder'] = 1
      end

        # The method to get the module
        # @return An instance of InventoryTemplates::ModuleMap

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [InventoryTemplates::ModuleMap] An instance of InventoryTemplates::ModuleMap

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? InventoryTemplates::ModuleMap
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: ModuleMap', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the created_by
        # @return An instance of InventoryTemplates::User

      def created_by
        @created_by
      end

        # The method to set the value to created_by
        # @param created_by [InventoryTemplates::User] An instance of InventoryTemplates::User

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? InventoryTemplates::User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: User', nil, nil)
        end
        @created_by = created_by
        @key_modified['created_by'] = 1
      end

        # The method to get the modified_by
        # @return An instance of InventoryTemplates::User

      def modified_by
        @modified_by
      end

        # The method to set the value to modified_by
        # @param modified_by [InventoryTemplates::User] An instance of InventoryTemplates::User

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? InventoryTemplates::User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: User', nil, nil)
        end
        @modified_by = modified_by
        @key_modified['modified_by'] = 1
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

        # The method to get the editor_mode
        # @return A String value

      def editor_mode
        @editor_mode
      end

        # The method to set the value to editor_mode
        # @param editor_mode [String] A String

      def editor_mode=(editor_mode)
        if editor_mode!=nil and !editor_mode.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: editor_mode EXPECTED TYPE: String', nil, nil)
        end
        @editor_mode = editor_mode
        @key_modified['editor_mode'] = 1
      end

        # The method to get the favorite
        # @return A Boolean value

      def favorite
        @favorite
      end

        # The method to set the value to favorite
        # @param favorite [Boolean] A Boolean

      def favorite=(favorite)
        if favorite!=nil and ! [true, false].include?favorite
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: favorite EXPECTED TYPE: Boolean', nil, nil)
        end
        @favorite = favorite
        @key_modified['favorite'] = 1
      end

        # The method to get the content
        # @return A String value

      def content
        @content
      end

        # The method to set the value to content
        # @param content [String] A String

      def content=(content)
        if content!=nil and !content.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: content EXPECTED TYPE: String', nil, nil)
        end
        @content = content
        @key_modified['content'] = 1
      end

        # The method to get the active
        # @return A Boolean value

      def active
        @active
      end

        # The method to set the value to active
        # @param active [Boolean] A Boolean

      def active=(active)
        if active!=nil and ! [true, false].include?active
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: active EXPECTED TYPE: Boolean', nil, nil)
        end
        @active = active
        @key_modified['active'] = 1
      end

        # The method to get the mail_content
        # @return A String value

      def mail_content
        @mail_content
      end

        # The method to set the value to mail_content
        # @param mail_content [String] A String

      def mail_content=(mail_content)
        if mail_content!=nil and !mail_content.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mail_content EXPECTED TYPE: String', nil, nil)
        end
        @mail_content = mail_content
        @key_modified['mail_content'] = 1
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
