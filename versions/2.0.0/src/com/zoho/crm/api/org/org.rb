require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module Org
    class Org
      include Util::Model

      # Creates an instance of Org
      def initialize
        @country = nil
        @photo_id = nil
        @city = nil
        @description = nil
        @mc_status = nil
        @gapps_enabled = nil
        @translation_enabled = nil
        @street = nil
        @domain_name = nil
        @alias_1 = nil
        @currency = nil
        @id = nil
        @state = nil
        @fax = nil
        @zip = nil
        @employee_count = nil
        @website = nil
        @currency_symbol = nil
        @mobile = nil
        @currency_locale = nil
        @primary_zuid = nil
        @zia_portal_id = nil
        @time_zone = nil
        @zgid = nil
        @country_code = nil
        @deletable_org_account = nil
        @license_details = nil
        @hierarchy_preferences = nil
        @phone = nil
        @company_name = nil
        @privacy_settings = nil
        @primary_email = nil
        @iso_code = nil
        @hipaa_compliance_enabled = nil
        @lite_users_enabled = nil
        @max_per_page = nil
        @ezgid = nil
        @call_icon = nil
        @oauth_presence = nil
        @zia_zgid = nil
        @checkin_preferences = nil
        @type = nil
        @created_time = nil
        @key_modified = Hash.new
      end

        # The method to get the country
        # @return A String value

      def country
        @country
      end

        # The method to set the value to country
        # @param country [String] A String

      def country=(country)
        if country!=nil and !country.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: country EXPECTED TYPE: String', nil, nil)
        end
        @country = country
        @key_modified['country'] = 1
      end

        # The method to get the photo_id
        # @return A String value

      def photo_id
        @photo_id
      end

        # The method to set the value to photo_id
        # @param photo_id [String] A String

      def photo_id=(photo_id)
        if photo_id!=nil and !photo_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: photo_id EXPECTED TYPE: String', nil, nil)
        end
        @photo_id = photo_id
        @key_modified['photo_id'] = 1
      end

        # The method to get the city
        # @return A String value

      def city
        @city
      end

        # The method to set the value to city
        # @param city [String] A String

      def city=(city)
        if city!=nil and !city.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: city EXPECTED TYPE: String', nil, nil)
        end
        @city = city
        @key_modified['city'] = 1
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

        # The method to get the mc_status
        # @return A Boolean value

      def mc_status
        @mc_status
      end

        # The method to set the value to mc_status
        # @param mc_status [Boolean] A Boolean

      def mc_status=(mc_status)
        if mc_status!=nil and ! [true, false].include?mc_status
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mc_status EXPECTED TYPE: Boolean', nil, nil)
        end
        @mc_status = mc_status
        @key_modified['mc_status'] = 1
      end

        # The method to get the gapps_enabled
        # @return A Boolean value

      def gapps_enabled
        @gapps_enabled
      end

        # The method to set the value to gapps_enabled
        # @param gapps_enabled [Boolean] A Boolean

      def gapps_enabled=(gapps_enabled)
        if gapps_enabled!=nil and ! [true, false].include?gapps_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: gapps_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @gapps_enabled = gapps_enabled
        @key_modified['gapps_enabled'] = 1
      end

        # The method to get the translation_enabled
        # @return A Boolean value

      def translation_enabled
        @translation_enabled
      end

        # The method to set the value to translation_enabled
        # @param translation_enabled [Boolean] A Boolean

      def translation_enabled=(translation_enabled)
        if translation_enabled!=nil and ! [true, false].include?translation_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: translation_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @translation_enabled = translation_enabled
        @key_modified['translation_enabled'] = 1
      end

        # The method to get the street
        # @return A String value

      def street
        @street
      end

        # The method to set the value to street
        # @param street [String] A String

      def street=(street)
        if street!=nil and !street.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: street EXPECTED TYPE: String', nil, nil)
        end
        @street = street
        @key_modified['street'] = 1
      end

        # The method to get the domain_name
        # @return A String value

      def domain_name
        @domain_name
      end

        # The method to set the value to domain_name
        # @param domain_name [String] A String

      def domain_name=(domain_name)
        if domain_name!=nil and !domain_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: domain_name EXPECTED TYPE: String', nil, nil)
        end
        @domain_name = domain_name
        @key_modified['domain_name'] = 1
      end

        # The method to get the alias
        # @return A String value

      def alias
        @alias_1
      end

        # The method to set the value to alias
        # @param alias_1 [String] A String

      def alias=(alias_1)
        if alias_1!=nil and !alias_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: alias_1 EXPECTED TYPE: String', nil, nil)
        end
        @alias_1 = alias_1
        @key_modified['alias'] = 1
      end

        # The method to get the currency
        # @return A String value

      def currency
        @currency
      end

        # The method to set the value to currency
        # @param currency [String] A String

      def currency=(currency)
        if currency!=nil and !currency.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: currency EXPECTED TYPE: String', nil, nil)
        end
        @currency = currency
        @key_modified['currency'] = 1
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

        # The method to get the state
        # @return A String value

      def state
        @state
      end

        # The method to set the value to state
        # @param state [String] A String

      def state=(state)
        if state!=nil and !state.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: String', nil, nil)
        end
        @state = state
        @key_modified['state'] = 1
      end

        # The method to get the fax
        # @return A String value

      def fax
        @fax
      end

        # The method to set the value to fax
        # @param fax [String] A String

      def fax=(fax)
        if fax!=nil and !fax.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fax EXPECTED TYPE: String', nil, nil)
        end
        @fax = fax
        @key_modified['fax'] = 1
      end

        # The method to get the zip
        # @return A String value

      def zip
        @zip
      end

        # The method to set the value to zip
        # @param zip [String] A String

      def zip=(zip)
        if zip!=nil and !zip.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zip EXPECTED TYPE: String', nil, nil)
        end
        @zip = zip
        @key_modified['zip'] = 1
      end

        # The method to get the employee_count
        # @return A String value

      def employee_count
        @employee_count
      end

        # The method to set the value to employee_count
        # @param employee_count [String] A String

      def employee_count=(employee_count)
        if employee_count!=nil and !employee_count.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: employee_count EXPECTED TYPE: String', nil, nil)
        end
        @employee_count = employee_count
        @key_modified['employee_count'] = 1
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

        # The method to get the currency_symbol
        # @return A String value

      def currency_symbol
        @currency_symbol
      end

        # The method to set the value to currency_symbol
        # @param currency_symbol [String] A String

      def currency_symbol=(currency_symbol)
        if currency_symbol!=nil and !currency_symbol.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: currency_symbol EXPECTED TYPE: String', nil, nil)
        end
        @currency_symbol = currency_symbol
        @key_modified['currency_symbol'] = 1
      end

        # The method to get the mobile
        # @return A String value

      def mobile
        @mobile
      end

        # The method to set the value to mobile
        # @param mobile [String] A String

      def mobile=(mobile)
        if mobile!=nil and !mobile.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mobile EXPECTED TYPE: String', nil, nil)
        end
        @mobile = mobile
        @key_modified['mobile'] = 1
      end

        # The method to get the currency_locale
        # @return A String value

      def currency_locale
        @currency_locale
      end

        # The method to set the value to currency_locale
        # @param currency_locale [String] A String

      def currency_locale=(currency_locale)
        if currency_locale!=nil and !currency_locale.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: currency_locale EXPECTED TYPE: String', nil, nil)
        end
        @currency_locale = currency_locale
        @key_modified['currency_locale'] = 1
      end

        # The method to get the primary_zuid
        # @return A String value

      def primary_zuid
        @primary_zuid
      end

        # The method to set the value to primary_zuid
        # @param primary_zuid [String] A String

      def primary_zuid=(primary_zuid)
        if primary_zuid!=nil and !primary_zuid.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: primary_zuid EXPECTED TYPE: String', nil, nil)
        end
        @primary_zuid = primary_zuid
        @key_modified['primary_zuid'] = 1
      end

        # The method to get the zia_portal_id
        # @return A String value

      def zia_portal_id
        @zia_portal_id
      end

        # The method to set the value to zia_portal_id
        # @param zia_portal_id [String] A String

      def zia_portal_id=(zia_portal_id)
        if zia_portal_id!=nil and !zia_portal_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zia_portal_id EXPECTED TYPE: String', nil, nil)
        end
        @zia_portal_id = zia_portal_id
        @key_modified['zia_portal_id'] = 1
      end

        # The method to get the time_zone
        # @return A String value

      def time_zone
        @time_zone
      end

        # The method to set the value to time_zone
        # @param time_zone [String] A String

      def time_zone=(time_zone)
        if time_zone!=nil and !time_zone.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: time_zone EXPECTED TYPE: String', nil, nil)
        end
        @time_zone = time_zone
        @key_modified['time_zone'] = 1
      end

        # The method to get the zgid
        # @return A String value

      def zgid
        @zgid
      end

        # The method to set the value to zgid
        # @param zgid [String] A String

      def zgid=(zgid)
        if zgid!=nil and !zgid.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zgid EXPECTED TYPE: String', nil, nil)
        end
        @zgid = zgid
        @key_modified['zgid'] = 1
      end

        # The method to get the country_code
        # @return A String value

      def country_code
        @country_code
      end

        # The method to set the value to country_code
        # @param country_code [String] A String

      def country_code=(country_code)
        if country_code!=nil and !country_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: country_code EXPECTED TYPE: String', nil, nil)
        end
        @country_code = country_code
        @key_modified['country_code'] = 1
      end

        # The method to get the deletable_org_account
        # @return A Boolean value

      def deletable_org_account
        @deletable_org_account
      end

        # The method to set the value to deletable_org_account
        # @param deletable_org_account [Boolean] A Boolean

      def deletable_org_account=(deletable_org_account)
        if deletable_org_account!=nil and ! [true, false].include?deletable_org_account
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deletable_org_account EXPECTED TYPE: Boolean', nil, nil)
        end
        @deletable_org_account = deletable_org_account
        @key_modified['deletable_org_account'] = 1
      end

        # The method to get the license_details
        # @return An instance of LicenseDetails

      def license_details
        @license_details
      end

        # The method to set the value to license_details
        # @param license_details [LicenseDetails] An instance of LicenseDetails

      def license_details=(license_details)
        if license_details!=nil and !license_details.is_a? LicenseDetails
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: license_details EXPECTED TYPE: LicenseDetails', nil, nil)
        end
        @license_details = license_details
        @key_modified['license_details'] = 1
      end

        # The method to get the hierarchy_preferences
        # @return An instance of HierarchyPreferences

      def hierarchy_preferences
        @hierarchy_preferences
      end

        # The method to set the value to hierarchy_preferences
        # @param hierarchy_preferences [HierarchyPreferences] An instance of HierarchyPreferences

      def hierarchy_preferences=(hierarchy_preferences)
        if hierarchy_preferences!=nil and !hierarchy_preferences.is_a? HierarchyPreferences
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: hierarchy_preferences EXPECTED TYPE: HierarchyPreferences', nil, nil)
        end
        @hierarchy_preferences = hierarchy_preferences
        @key_modified['hierarchy_preferences'] = 1
      end

        # The method to get the phone
        # @return A String value

      def phone
        @phone
      end

        # The method to set the value to phone
        # @param phone [String] A String

      def phone=(phone)
        if phone!=nil and !phone.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: phone EXPECTED TYPE: String', nil, nil)
        end
        @phone = phone
        @key_modified['phone'] = 1
      end

        # The method to get the company_name
        # @return A String value

      def company_name
        @company_name
      end

        # The method to set the value to company_name
        # @param company_name [String] A String

      def company_name=(company_name)
        if company_name!=nil and !company_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: company_name EXPECTED TYPE: String', nil, nil)
        end
        @company_name = company_name
        @key_modified['company_name'] = 1
      end

        # The method to get the privacy_settings
        # @return A Boolean value

      def privacy_settings
        @privacy_settings
      end

        # The method to set the value to privacy_settings
        # @param privacy_settings [Boolean] A Boolean

      def privacy_settings=(privacy_settings)
        if privacy_settings!=nil and ! [true, false].include?privacy_settings
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: privacy_settings EXPECTED TYPE: Boolean', nil, nil)
        end
        @privacy_settings = privacy_settings
        @key_modified['privacy_settings'] = 1
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

        # The method to get the iso_code
        # @return A String value

      def iso_code
        @iso_code
      end

        # The method to set the value to iso_code
        # @param iso_code [String] A String

      def iso_code=(iso_code)
        if iso_code!=nil and !iso_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: iso_code EXPECTED TYPE: String', nil, nil)
        end
        @iso_code = iso_code
        @key_modified['iso_code'] = 1
      end

        # The method to get the hipaa_compliance_enabled
        # @return A Boolean value

      def hipaa_compliance_enabled
        @hipaa_compliance_enabled
      end

        # The method to set the value to hipaa_compliance_enabled
        # @param hipaa_compliance_enabled [Boolean] A Boolean

      def hipaa_compliance_enabled=(hipaa_compliance_enabled)
        if hipaa_compliance_enabled!=nil and ! [true, false].include?hipaa_compliance_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: hipaa_compliance_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @hipaa_compliance_enabled = hipaa_compliance_enabled
        @key_modified['hipaa_compliance_enabled'] = 1
      end

        # The method to get the lite_users_enabled
        # @return A Boolean value

      def lite_users_enabled
        @lite_users_enabled
      end

        # The method to set the value to lite_users_enabled
        # @param lite_users_enabled [Boolean] A Boolean

      def lite_users_enabled=(lite_users_enabled)
        if lite_users_enabled!=nil and ! [true, false].include?lite_users_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lite_users_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @lite_users_enabled = lite_users_enabled
        @key_modified['lite_users_enabled'] = 1
      end

        # The method to get the max_per_page
        # @return A Integer value

      def max_per_page
        @max_per_page
      end

        # The method to set the value to max_per_page
        # @param max_per_page [Integer] A Integer

      def max_per_page=(max_per_page)
        if max_per_page!=nil and !max_per_page.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: max_per_page EXPECTED TYPE: Integer', nil, nil)
        end
        @max_per_page = max_per_page
        @key_modified['max_per_page'] = 1
      end

        # The method to get the ezgid
        # @return A String value

      def ezgid
        @ezgid
      end

        # The method to set the value to ezgid
        # @param ezgid [String] A String

      def ezgid=(ezgid)
        if ezgid!=nil and !ezgid.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ezgid EXPECTED TYPE: String', nil, nil)
        end
        @ezgid = ezgid
        @key_modified['ezgid'] = 1
      end

        # The method to get the call_icon
        # @return A String value

      def call_icon
        @call_icon
      end

        # The method to set the value to call_icon
        # @param call_icon [String] A String

      def call_icon=(call_icon)
        if call_icon!=nil and !call_icon.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: call_icon EXPECTED TYPE: String', nil, nil)
        end
        @call_icon = call_icon
        @key_modified['call_icon'] = 1
      end

        # The method to get the oauth_presence
        # @return A Boolean value

      def oauth_presence
        @oauth_presence
      end

        # The method to set the value to oauth_presence
        # @param oauth_presence [Boolean] A Boolean

      def oauth_presence=(oauth_presence)
        if oauth_presence!=nil and ! [true, false].include?oauth_presence
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: oauth_presence EXPECTED TYPE: Boolean', nil, nil)
        end
        @oauth_presence = oauth_presence
        @key_modified['oauth_presence'] = 1
      end

        # The method to get the zia_zgid
        # @return A Integer value

      def zia_zgid
        @zia_zgid
      end

        # The method to set the value to zia_zgid
        # @param zia_zgid [Integer] A Integer

      def zia_zgid=(zia_zgid)
        if zia_zgid!=nil and !zia_zgid.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zia_zgid EXPECTED TYPE: Integer', nil, nil)
        end
        @zia_zgid = zia_zgid
        @key_modified['zia_zgid'] = 1
      end

        # The method to get the checkin_preferences
        # @return An instance of CheckinPreferences

      def checkin_preferences
        @checkin_preferences
      end

        # The method to set the value to checkin_preferences
        # @param checkin_preferences [CheckinPreferences] An instance of CheckinPreferences

      def checkin_preferences=(checkin_preferences)
        if checkin_preferences!=nil and !checkin_preferences.is_a? CheckinPreferences
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: checkin_preferences EXPECTED TYPE: CheckinPreferences', nil, nil)
        end
        @checkin_preferences = checkin_preferences
        @key_modified['checkin_preferences'] = 1
      end

        # The method to get the type
        # @return An instance of Util::Choice

      def type
        @type
      end

        # The method to set the value to type
        # @param type [Util::Choice] An instance of Util::Choice

      def type=(type)
        if type!=nil and !type.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: Util::Choice', nil, nil)
        end
        @type = type
        @key_modified['type'] = 1
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
