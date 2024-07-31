require_relative '../util/model'

module ZOHOCRMSDK
  module ZiaOrgEnrichment
    class EnrichedData
      include Util::Model

      # Creates an instance of EnrichedData
      def initialize
        @org_status = nil
        @description = nil
        @ceo = nil
        @secondary_email = nil
        @revenue = nil
        @years_in_industry = nil
        @other_contacts = nil
        @techno_graphic_data = nil
        @logo = nil
        @secondary_contact = nil
        @id = nil
        @other_emails = nil
        @sign_in = nil
        @website = nil
        @address = nil
        @sign_up = nil
        @org_type = nil
        @head_quarters = nil
        @no_of_employees = nil
        @territory_list = nil
        @founding_year = nil
        @industries = nil
        @name = nil
        @primary_email = nil
        @business_model = nil
        @primary_contact = nil
        @social_media = nil
        @key_modified = Hash.new
      end

        # The method to get the org_status
        # @return A String value

      def org_status
        @org_status
      end

        # The method to set the value to org_status
        # @param org_status [String] A String

      def org_status=(org_status)
        if org_status!=nil and !org_status.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: org_status EXPECTED TYPE: String', nil, nil)
        end
        @org_status = org_status
        @key_modified['org_status'] = 1
      end

        # The method to get the description
        # @return An instance of Array

      def description
        @description
      end

        # The method to set the value to description
        # @param description [Array] An instance of Array

      def description=(description)
        if description!=nil and !description.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: Array', nil, nil)
        end
        @description = description
        @key_modified['description'] = 1
      end

        # The method to get the ceo
        # @return A String value

      def ceo
        @ceo
      end

        # The method to set the value to ceo
        # @param ceo [String] A String

      def ceo=(ceo)
        if ceo!=nil and !ceo.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ceo EXPECTED TYPE: String', nil, nil)
        end
        @ceo = ceo
        @key_modified['ceo'] = 1
      end

        # The method to get the secondary_email
        # @return A String value

      def secondary_email
        @secondary_email
      end

        # The method to set the value to secondary_email
        # @param secondary_email [String] A String

      def secondary_email=(secondary_email)
        if secondary_email!=nil and !secondary_email.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: secondary_email EXPECTED TYPE: String', nil, nil)
        end
        @secondary_email = secondary_email
        @key_modified['secondary_email'] = 1
      end

        # The method to get the revenue
        # @return A String value

      def revenue
        @revenue
      end

        # The method to set the value to revenue
        # @param revenue [String] A String

      def revenue=(revenue)
        if revenue!=nil and !revenue.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: revenue EXPECTED TYPE: String', nil, nil)
        end
        @revenue = revenue
        @key_modified['revenue'] = 1
      end

        # The method to get the years_in_industry
        # @return A String value

      def years_in_industry
        @years_in_industry
      end

        # The method to set the value to years_in_industry
        # @param years_in_industry [String] A String

      def years_in_industry=(years_in_industry)
        if years_in_industry!=nil and !years_in_industry.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: years_in_industry EXPECTED TYPE: String', nil, nil)
        end
        @years_in_industry = years_in_industry
        @key_modified['years_in_industry'] = 1
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

        # The method to get the techno_graphic_data
        # @return A String value

      def techno_graphic_data
        @techno_graphic_data
      end

        # The method to set the value to techno_graphic_data
        # @param techno_graphic_data [String] A String

      def techno_graphic_data=(techno_graphic_data)
        if techno_graphic_data!=nil and !techno_graphic_data.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: techno_graphic_data EXPECTED TYPE: String', nil, nil)
        end
        @techno_graphic_data = techno_graphic_data
        @key_modified['techno_graphic_data'] = 1
      end

        # The method to get the logo
        # @return A String value

      def logo
        @logo
      end

        # The method to set the value to logo
        # @param logo [String] A String

      def logo=(logo)
        if logo!=nil and !logo.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: logo EXPECTED TYPE: String', nil, nil)
        end
        @logo = logo
        @key_modified['logo'] = 1
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

        # The method to get the other_emails
        # @return An instance of Array

      def other_emails
        @other_emails
      end

        # The method to set the value to other_emails
        # @param other_emails [Array] An instance of Array

      def other_emails=(other_emails)
        if other_emails!=nil and !other_emails.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: other_emails EXPECTED TYPE: Array', nil, nil)
        end
        @other_emails = other_emails
        @key_modified['other_emails'] = 1
      end

        # The method to get the sign_in
        # @return A String value

      def sign_in
        @sign_in
      end

        # The method to set the value to sign_in
        # @param sign_in [String] A String

      def sign_in=(sign_in)
        if sign_in!=nil and !sign_in.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sign_in EXPECTED TYPE: String', nil, nil)
        end
        @sign_in = sign_in
        @key_modified['sign_in'] = 1
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

        # The method to get the address
        # @return An instance of Array

      def address
        @address
      end

        # The method to set the value to address
        # @param address [Array] An instance of Array

      def address=(address)
        if address!=nil and !address.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: address EXPECTED TYPE: Array', nil, nil)
        end
        @address = address
        @key_modified['address'] = 1
      end

        # The method to get the sign_up
        # @return A String value

      def sign_up
        @sign_up
      end

        # The method to set the value to sign_up
        # @param sign_up [String] A String

      def sign_up=(sign_up)
        if sign_up!=nil and !sign_up.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sign_up EXPECTED TYPE: String', nil, nil)
        end
        @sign_up = sign_up
        @key_modified['sign_up'] = 1
      end

        # The method to get the org_type
        # @return A String value

      def org_type
        @org_type
      end

        # The method to set the value to org_type
        # @param org_type [String] A String

      def org_type=(org_type)
        if org_type!=nil and !org_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: org_type EXPECTED TYPE: String', nil, nil)
        end
        @org_type = org_type
        @key_modified['org_type'] = 1
      end

        # The method to get the head_quarters
        # @return An instance of Array

      def head_quarters
        @head_quarters
      end

        # The method to set the value to head_quarters
        # @param head_quarters [Array] An instance of Array

      def head_quarters=(head_quarters)
        if head_quarters!=nil and !head_quarters.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: head_quarters EXPECTED TYPE: Array', nil, nil)
        end
        @head_quarters = head_quarters
        @key_modified['head_quarters'] = 1
      end

        # The method to get the no_of_employees
        # @return A String value

      def no_of_employees
        @no_of_employees
      end

        # The method to set the value to no_of_employees
        # @param no_of_employees [String] A String

      def no_of_employees=(no_of_employees)
        if no_of_employees!=nil and !no_of_employees.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: no_of_employees EXPECTED TYPE: String', nil, nil)
        end
        @no_of_employees = no_of_employees
        @key_modified['no_of_employees'] = 1
      end

        # The method to get the territory_list
        # @return An instance of Array

      def territory_list
        @territory_list
      end

        # The method to set the value to territory_list
        # @param territory_list [Array] An instance of Array

      def territory_list=(territory_list)
        if territory_list!=nil and !territory_list.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory_list EXPECTED TYPE: Array', nil, nil)
        end
        @territory_list = territory_list
        @key_modified['territory_list'] = 1
      end

        # The method to get the founding_year
        # @return A String value

      def founding_year
        @founding_year
      end

        # The method to set the value to founding_year
        # @param founding_year [String] A String

      def founding_year=(founding_year)
        if founding_year!=nil and !founding_year.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: founding_year EXPECTED TYPE: String', nil, nil)
        end
        @founding_year = founding_year
        @key_modified['founding_year'] = 1
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

        # The method to get the business_model
        # @return An instance of Array

      def business_model
        @business_model
      end

        # The method to set the value to business_model
        # @param business_model [Array] An instance of Array

      def business_model=(business_model)
        if business_model!=nil and !business_model.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: business_model EXPECTED TYPE: Array', nil, nil)
        end
        @business_model = business_model
        @key_modified['business_model'] = 1
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
