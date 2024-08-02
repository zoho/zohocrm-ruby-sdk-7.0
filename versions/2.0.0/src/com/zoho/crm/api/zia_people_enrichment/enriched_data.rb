require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaPeopleEnrichment
    class EnrichedData
      include Util::Model

      # Creates an instance of EnrichedData
      def initialize
        @website = nil
        @email_infos = nil
        @gender = nil
        @company_info = nil
        @last_name = nil
        @educations = nil
        @middle_name = nil
        @skills = nil
        @other_contacts = nil
        @address_list_info = nil
        @primary_address_info = nil
        @name = nil
        @secondary_contact = nil
        @primary_email = nil
        @designation = nil
        @id = nil
        @interests = nil
        @first_name = nil
        @primary_contact = nil
        @social_media = nil
        @key_modified = Hash.new
      end

        # The method to get the website
        # @return A String value

      def website
        @website
      end

        # The method to set the value to website
        # @param website [String] A String

      def website=(website)
        if website!=nil and !website.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: website EXPECTED TYPE: String', nil, nil)
        end
        @website = website
        @key_modified['website'] = 1
      end

        # The method to get the email_infos
        # @return An instance of Array

      def email_infos
        @email_infos
      end

        # The method to set the value to email_infos
        # @param email_infos [Array] An instance of Array

      def email_infos=(email_infos)
        if email_infos!=nil and !email_infos.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email_infos EXPECTED TYPE: Array', nil, nil)
        end
        @email_infos = email_infos
        @key_modified['email_infos'] = 1
      end

        # The method to get the gender
        # @return A String value

      def gender
        @gender
      end

        # The method to set the value to gender
        # @param gender [String] A String

      def gender=(gender)
        if gender!=nil and !gender.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: gender EXPECTED TYPE: String', nil, nil)
        end
        @gender = gender
        @key_modified['gender'] = 1
      end

        # The method to get the company_info
        # @return An instance of CompanyInfo

      def company_info
        @company_info
      end

        # The method to set the value to company_info
        # @param company_info [CompanyInfo] An instance of CompanyInfo

      def company_info=(company_info)
        if company_info!=nil and !company_info.is_a? CompanyInfo
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: company_info EXPECTED TYPE: CompanyInfo', nil, nil)
        end
        @company_info = company_info
        @key_modified['company_info'] = 1
      end

        # The method to get the last_name
        # @return A String value

      def last_name
        @last_name
      end

        # The method to set the value to last_name
        # @param last_name [String] A String

      def last_name=(last_name)
        if last_name!=nil and !last_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: last_name EXPECTED TYPE: String', nil, nil)
        end
        @last_name = last_name
        @key_modified['last_name'] = 1
      end

        # The method to get the educations
        # @return An instance of Array

      def educations
        @educations
      end

        # The method to set the value to educations
        # @param educations [Array] An instance of Array

      def educations=(educations)
        if educations!=nil and !educations.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: educations EXPECTED TYPE: Array', nil, nil)
        end
        @educations = educations
        @key_modified['educations'] = 1
      end

        # The method to get the middle_name
        # @return A String value

      def middle_name
        @middle_name
      end

        # The method to set the value to middle_name
        # @param middle_name [String] A String

      def middle_name=(middle_name)
        if middle_name!=nil and !middle_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: middle_name EXPECTED TYPE: String', nil, nil)
        end
        @middle_name = middle_name
        @key_modified['middle_name'] = 1
      end

        # The method to get the skills
        # @return An instance of Array

      def skills
        @skills
      end

        # The method to set the value to skills
        # @param skills [Array] An instance of Array

      def skills=(skills)
        if skills!=nil and !skills.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: skills EXPECTED TYPE: Array', nil, nil)
        end
        @skills = skills
        @key_modified['skills'] = 1
      end

        # The method to get the other_contacts
        # @return An instance of Array

      def other_contacts
        @other_contacts
      end

        # The method to set the value to other_contacts
        # @param other_contacts [Array] An instance of Array

      def other_contacts=(other_contacts)
        if other_contacts!=nil and !other_contacts.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: other_contacts EXPECTED TYPE: Array', nil, nil)
        end
        @other_contacts = other_contacts
        @key_modified['other_contacts'] = 1
      end

        # The method to get the address_list_info
        # @return An instance of Array

      def address_list_info
        @address_list_info
      end

        # The method to set the value to address_list_info
        # @param address_list_info [Array] An instance of Array

      def address_list_info=(address_list_info)
        if address_list_info!=nil and !address_list_info.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: address_list_info EXPECTED TYPE: Array', nil, nil)
        end
        @address_list_info = address_list_info
        @key_modified['address_list_info'] = 1
      end

        # The method to get the primary_address_info
        # @return An instance of Address

      def primary_address_info
        @primary_address_info
      end

        # The method to set the value to primary_address_info
        # @param primary_address_info [Address] An instance of Address

      def primary_address_info=(primary_address_info)
        if primary_address_info!=nil and !primary_address_info.is_a? Address
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: primary_address_info EXPECTED TYPE: Address', nil, nil)
        end
        @primary_address_info = primary_address_info
        @key_modified['primary_address_info'] = 1
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

        # The method to get the secondary_contact
        # @return A String value

      def secondary_contact
        @secondary_contact
      end

        # The method to set the value to secondary_contact
        # @param secondary_contact [String] A String

      def secondary_contact=(secondary_contact)
        if secondary_contact!=nil and !secondary_contact.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: secondary_contact EXPECTED TYPE: String', nil, nil)
        end
        @secondary_contact = secondary_contact
        @key_modified['secondary_contact'] = 1
      end

        # The method to get the primary_email
        # @return A String value

      def primary_email
        @primary_email
      end

        # The method to set the value to primary_email
        # @param primary_email [String] A String

      def primary_email=(primary_email)
        if primary_email!=nil and !primary_email.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: primary_email EXPECTED TYPE: String', nil, nil)
        end
        @primary_email = primary_email
        @key_modified['primary_email'] = 1
      end

        # The method to get the designation
        # @return A String value

      def designation
        @designation
      end

        # The method to set the value to designation
        # @param designation [String] A String

      def designation=(designation)
        if designation!=nil and !designation.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: designation EXPECTED TYPE: String', nil, nil)
        end
        @designation = designation
        @key_modified['designation'] = 1
      end

        # The method to get the id
        # @return A String value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [String] A String

      def id=(id)
        if id!=nil and !id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: String', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
      end

        # The method to get the interests
        # @return An instance of Array

      def interests
        @interests
      end

        # The method to set the value to interests
        # @param interests [Array] An instance of Array

      def interests=(interests)
        if interests!=nil and !interests.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: interests EXPECTED TYPE: Array', nil, nil)
        end
        @interests = interests
        @key_modified['interests'] = 1
      end

        # The method to get the first_name
        # @return A String value

      def first_name
        @first_name
      end

        # The method to set the value to first_name
        # @param first_name [String] A String

      def first_name=(first_name)
        if first_name!=nil and !first_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: first_name EXPECTED TYPE: String', nil, nil)
        end
        @first_name = first_name
        @key_modified['first_name'] = 1
      end

        # The method to get the primary_contact
        # @return A String value

      def primary_contact
        @primary_contact
      end

        # The method to set the value to primary_contact
        # @param primary_contact [String] A String

      def primary_contact=(primary_contact)
        if primary_contact!=nil and !primary_contact.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: primary_contact EXPECTED TYPE: String', nil, nil)
        end
        @primary_contact = primary_contact
        @key_modified['primary_contact'] = 1
      end

        # The method to get the social_media
        # @return An instance of Array

      def social_media
        @social_media
      end

        # The method to set the value to social_media
        # @param social_media [Array] An instance of Array

      def social_media=(social_media)
        if social_media!=nil and !social_media.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: social_media EXPECTED TYPE: Array', nil, nil)
        end
        @social_media = social_media
        @key_modified['social_media'] = 1
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
