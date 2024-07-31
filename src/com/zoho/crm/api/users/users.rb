require_relative '../record/record'
require_relative '../tags/tag'
require_relative '../util/choice'
require_relative '../util/model'

module ZOHOCRMSDK
  module Users
    class Users < Record::Record
      include Util::Model

      # Creates an instance of Users
      def initialize
        super
      end

        # The method to get the country
        # @return A String value

      def country
        get_key_value('country')
      end

        # The method to set the value to country
        # @param country [String] A String

      def country=(country)
        if country!=nil and !country.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: country EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('country', country)
      end

        # The method to get the language
        # @return A String value

      def language
        get_key_value('language')
      end

        # The method to set the value to language
        # @param language [String] A String

      def language=(language)
        if language!=nil and !language.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: language EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('language', language)
      end

        # The method to get the microsoft
        # @return A Boolean value

      def microsoft
        get_key_value('microsoft')
      end

        # The method to set the value to microsoft
        # @param microsoft [Boolean] A Boolean

      def microsoft=(microsoft)
        if microsoft!=nil and ! [true, false].include?microsoft
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: microsoft EXPECTED TYPE: Boolean', nil, nil)
        end
        add_key_value('microsoft', microsoft)
      end

        # The method to get the shift_effective_from
        # @return A lang::Object value

      def shift_effective_from
        get_key_value('$shift_effective_from')
      end

        # The method to set the value to shift_effective_from
        # @param shift_effective_from [lang::Object] A lang::Object

      def shift_effective_from=(shift_effective_from)
        add_key_value('$shift_effective_from', shift_effective_from)
      end

        # The method to get the id
        # @return A Integer value

      def id
        get_key_value('id')
      end

        # The method to set the value to id
        # @param id [Integer] A Integer

      def id=(id)
        if id!=nil and !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        add_key_value('id', id)
      end

        # The method to get the state
        # @return A String value

      def state
        get_key_value('state')
      end

        # The method to set the value to state
        # @param state [String] A String

      def state=(state)
        if state!=nil and !state.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('state', state)
      end

        # The method to get the fax
        # @return A String value

      def fax
        get_key_value('fax')
      end

        # The method to set the value to fax
        # @param fax [String] A String

      def fax=(fax)
        if fax!=nil and !fax.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fax EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('fax', fax)
      end

        # The method to get the country_locale
        # @return A String value

      def country_locale
        get_key_value('country_locale')
      end

        # The method to set the value to country_locale
        # @param country_locale [String] A String

      def country_locale=(country_locale)
        if country_locale!=nil and !country_locale.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: country_locale EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('country_locale', country_locale)
      end

        # The method to get the zip
        # @return A String value

      def zip
        get_key_value('zip')
      end

        # The method to set the value to zip
        # @param zip [String] A String

      def zip=(zip)
        if zip!=nil and !zip.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zip EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('zip', zip)
      end

        # The method to get the created_time
        # @return An instance of DateTime

      def created_time
        get_key_value('created_time')
      end

        # The method to set the value to created_time
        # @param created_time [DateTime] An instance of DateTime

      def created_time=(created_time)
        if created_time!=nil and !created_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
        end
        add_key_value('created_time', created_time)
      end

        # The method to get the time_format
        # @return An instance of Util::Choice

      def time_format
        get_key_value('time_format')
      end

        # The method to set the value to time_format
        # @param time_format [Util::Choice] An instance of Util::Choice

      def time_format=(time_format)
        if time_format!=nil and !time_format.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: time_format EXPECTED TYPE: Util::Choice', nil, nil)
        end
        add_key_value('time_format', time_format)
      end

        # The method to get the offset
        # @return A Integer value

      def offset
        get_key_value('offset')
      end

        # The method to set the value to offset
        # @param offset [Integer] A Integer

      def offset=(offset)
        if offset!=nil and !offset.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: offset EXPECTED TYPE: Integer', nil, nil)
        end
        add_key_value('offset', offset)
      end

        # The method to get the imap_status
        # @return A Boolean value

      def imap_status
        get_key_value('imap_status')
      end

        # The method to set the value to imap_status
        # @param imap_status [Boolean] A Boolean

      def imap_status=(imap_status)
        if imap_status!=nil and ! [true, false].include?imap_status
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: imap_status EXPECTED TYPE: Boolean', nil, nil)
        end
        add_key_value('imap_status', imap_status)
      end

        # The method to get the image_link
        # @return A String value

      def image_link
        get_key_value('image_link')
      end

        # The method to set the value to image_link
        # @param image_link [String] A String

      def image_link=(image_link)
        if image_link!=nil and !image_link.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: image_link EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('image_link', image_link)
      end

        # The method to get the ezuid
        # @return A String value

      def ezuid
        get_key_value('ezuid')
      end

        # The method to set the value to ezuid
        # @param ezuid [String] A String

      def ezuid=(ezuid)
        if ezuid!=nil and !ezuid.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ezuid EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('ezuid', ezuid)
      end

        # The method to get the profile
        # @return An instance of Profile

      def profile
        get_key_value('profile')
      end

        # The method to set the value to profile
        # @param profile [Profile] An instance of Profile

      def profile=(profile)
        if profile!=nil and !profile.is_a? Profile
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: profile EXPECTED TYPE: Profile', nil, nil)
        end
        add_key_value('profile', profile)
      end

        # The method to get the role
        # @return An instance of Role

      def role
        get_key_value('role')
      end

        # The method to set the value to role
        # @param role [Role] An instance of Role

      def role=(role)
        if role!=nil and !role.is_a? Role
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: role EXPECTED TYPE: Role', nil, nil)
        end
        add_key_value('role', role)
      end

        # The method to get the created_by
        # @return An instance of MinifiedUser

      def created_by
        get_key_value('created_by')
      end

        # The method to set the value to created_by
        # @param created_by [MinifiedUser] An instance of MinifiedUser

      def created_by=(created_by)
        if created_by!=nil and !created_by.is_a? MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        add_key_value('created_by', created_by)
      end

        # The method to get the full_name
        # @return A String value

      def full_name
        get_key_value('full_name')
      end

        # The method to set the value to full_name
        # @param full_name [String] A String

      def full_name=(full_name)
        if full_name!=nil and !full_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: full_name EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('full_name', full_name)
      end

        # The method to get the zuid
        # @return A String value

      def zuid
        get_key_value('zuid')
      end

        # The method to set the value to zuid
        # @param zuid [String] A String

      def zuid=(zuid)
        if zuid!=nil and !zuid.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zuid EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('zuid', zuid)
      end

        # The method to get the phone
        # @return A String value

      def phone
        get_key_value('phone')
      end

        # The method to set the value to phone
        # @param phone [String] A String

      def phone=(phone)
        if phone!=nil and !phone.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: phone EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('phone', phone)
      end

        # The method to get the dob
        # @return An instance of Date

      def dob
        get_key_value('dob')
      end

        # The method to set the value to dob
        # @param dob [Date] An instance of Date

      def dob=(dob)
        if dob!=nil and !dob.is_a? Date
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: dob EXPECTED TYPE: Date', nil, nil)
        end
        add_key_value('dob', dob)
      end

        # The method to get the status
        # @return A String value

      def status
        get_key_value('status')
      end

        # The method to set the value to status
        # @param status [String] A String

      def status=(status)
        if status!=nil and !status.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('status', status)
      end

        # The method to get the customize_info
        # @return An instance of CustomizeInfo

      def customize_info
        get_key_value('customize_info')
      end

        # The method to set the value to customize_info
        # @param customize_info [CustomizeInfo] An instance of CustomizeInfo

      def customize_info=(customize_info)
        if customize_info!=nil and !customize_info.is_a? CustomizeInfo
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: customize_info EXPECTED TYPE: CustomizeInfo', nil, nil)
        end
        add_key_value('customize_info', customize_info)
      end

        # The method to get the city
        # @return A String value

      def city
        get_key_value('city')
      end

        # The method to set the value to city
        # @param city [String] A String

      def city=(city)
        if city!=nil and !city.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: city EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('city', city)
      end

        # The method to get the signature
        # @return A String value

      def signature
        get_key_value('signature')
      end

        # The method to set the value to signature
        # @param signature [String] A String

      def signature=(signature)
        if signature!=nil and !signature.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: signature EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('signature', signature)
      end

        # The method to get the sort_order_preference__s
        # @return A String value

      def sort_order_preference__s
        get_key_value('sort_order_preference__s')
      end

        # The method to set the value to sort_order_preference__s
        # @param sort_order_preference__s [String] A String

      def sort_order_preference__s=(sort_order_preference__s)
        if sort_order_preference__s!=nil and !sort_order_preference__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sort_order_preference__s EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('sort_order_preference__s', sort_order_preference__s)
      end

        # The method to get the category
        # @return A String value

      def category
        get_key_value('category')
      end

        # The method to set the value to category
        # @param category [String] A String

      def category=(category)
        if category!=nil and !category.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: category EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('category', category)
      end

        # The method to get the date_format
        # @return An instance of Util::Choice

      def date_format
        get_key_value('date_format')
      end

        # The method to set the value to date_format
        # @param date_format [Util::Choice] An instance of Util::Choice

      def date_format=(date_format)
        if date_format!=nil and !date_format.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: date_format EXPECTED TYPE: Util::Choice', nil, nil)
        end
        add_key_value('date_format', date_format)
      end

        # The method to get the confirm
        # @return A Boolean value

      def confirm
        get_key_value('confirm')
      end

        # The method to set the value to confirm
        # @param confirm [Boolean] A Boolean

      def confirm=(confirm)
        if confirm!=nil and ! [true, false].include?confirm
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: confirm EXPECTED TYPE: Boolean', nil, nil)
        end
        add_key_value('confirm', confirm)
      end

        # The method to get the decimal_separator
        # @return An instance of Util::Choice

      def decimal_separator
        get_key_value('decimal_separator')
      end

        # The method to set the value to decimal_separator
        # @param decimal_separator [Util::Choice] An instance of Util::Choice

      def decimal_separator=(decimal_separator)
        if decimal_separator!=nil and !decimal_separator.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: decimal_separator EXPECTED TYPE: Util::Choice', nil, nil)
        end
        add_key_value('decimal_separator', decimal_separator)
      end

        # The method to get the number_separator
        # @return An instance of Util::Choice

      def number_separator
        get_key_value('number_separator')
      end

        # The method to set the value to number_separator
        # @param number_separator [Util::Choice] An instance of Util::Choice

      def number_separator=(number_separator)
        if number_separator!=nil and !number_separator.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: number_separator EXPECTED TYPE: Util::Choice', nil, nil)
        end
        add_key_value('number_separator', number_separator)
      end

        # The method to get the time_zone
        # @return An instance of String

      def time_zone
        get_key_value('time_zone')
      end

        # The method to set the value to time_zone
        # @param time_zone [String] An instance of String

      def time_zone=(time_zone)
        if time_zone!=nil and !time_zone.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: time_zone EXPECTED TYPE: TimeZone', nil, nil)
        end
        add_key_value('time_zone', time_zone)
      end

        # The method to get the last_name
        # @return A String value

      def last_name
        get_key_value('last_name')
      end

        # The method to set the value to last_name
        # @param last_name [String] A String

      def last_name=(last_name)
        if last_name!=nil and !last_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: last_name EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('last_name', last_name)
      end

        # The method to get the mobile
        # @return A String value

      def mobile
        get_key_value('mobile')
      end

        # The method to set the value to mobile
        # @param mobile [String] A String

      def mobile=(mobile)
        if mobile!=nil and !mobile.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mobile EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('mobile', mobile)
      end

        # The method to get the current_shift
        # @return An instance of Shift

      def current_shift
        get_key_value('$current_shift')
      end

        # The method to set the value to current_shift
        # @param current_shift [Shift] An instance of Shift

      def current_shift=(current_shift)
        if current_shift!=nil and !current_shift.is_a? Shift
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: current_shift EXPECTED TYPE: Shift', nil, nil)
        end
        add_key_value('$current_shift', current_shift)
      end

        # The method to get the reporting_to
        # @return An instance of MinifiedUser

      def reporting_to
        get_key_value('Reporting_To')
      end

        # The method to set the value to reporting_to
        # @param reporting_to [MinifiedUser] An instance of MinifiedUser

      def reporting_to=(reporting_to)
        if reporting_to!=nil and !reporting_to.is_a? MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reporting_to EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        add_key_value('Reporting_To', reporting_to)
      end

        # The method to get the currency
        # @return A String value

      def currency
        get_key_value('Currency')
      end

        # The method to set the value to currency
        # @param currency [String] A String

      def currency=(currency)
        if currency!=nil and !currency.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: currency EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('Currency', currency)
      end

        # The method to get the next_shift
        # @return An instance of Shift

      def next_shift
        get_key_value('$next_shift')
      end

        # The method to set the value to next_shift
        # @param next_shift [Shift] An instance of Shift

      def next_shift=(next_shift)
        if next_shift!=nil and !next_shift.is_a? Shift
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: next_shift EXPECTED TYPE: Shift', nil, nil)
        end
        add_key_value('$next_shift', next_shift)
      end

        # The method to get the modified_time
        # @return An instance of DateTime

      def modified_time
        get_key_value('Modified_Time')
      end

        # The method to set the value to modified_time
        # @param modified_time [DateTime] An instance of DateTime

      def modified_time=(modified_time)
        if modified_time!=nil and !modified_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
        end
        add_key_value('Modified_Time', modified_time)
      end

        # The method to get the website
        # @return A String value

      def website
        get_key_value('website')
      end

        # The method to set the value to website
        # @param website [String] A String

      def website=(website)
        if website!=nil and !website.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: website EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('website', website)
      end

        # The method to get the status_reason__s
        # @return A String value

      def status_reason__s
        get_key_value('status_reason__s')
      end

        # The method to set the value to status_reason__s
        # @param status_reason__s [String] A String

      def status_reason__s=(status_reason__s)
        if status_reason__s!=nil and !status_reason__s.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status_reason__s EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('status_reason__s', status_reason__s)
      end

        # The method to get the email
        # @return A String value

      def email
        get_key_value('email')
      end

        # The method to set the value to email
        # @param email [String] A String

      def email=(email)
        if email!=nil and !email.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('email', email)
      end

        # The method to get the first_name
        # @return A String value

      def first_name
        get_key_value('first_name')
      end

        # The method to set the value to first_name
        # @param first_name [String] A String

      def first_name=(first_name)
        if first_name!=nil and !first_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: first_name EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('first_name', first_name)
      end

        # The method to get the sandboxdeveloper
        # @return A Boolean value

      def sandboxdeveloper
        get_key_value('sandboxDeveloper')
      end

        # The method to set the value to sandboxdeveloper
        # @param sandboxdeveloper [Boolean] A Boolean

      def sandboxdeveloper=(sandboxdeveloper)
        if sandboxdeveloper!=nil and ! [true, false].include?sandboxdeveloper
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sandboxdeveloper EXPECTED TYPE: Boolean', nil, nil)
        end
        add_key_value('sandboxDeveloper', sandboxdeveloper)
      end

        # The method to get the alias
        # @return A String value

      def alias
        get_key_value('alias')
      end

        # The method to set the value to alias
        # @param alias_1 [String] A String

      def alias=(alias_1)
        if alias_1!=nil and !alias_1.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: alias_1 EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('alias', alias_1)
      end

        # The method to get the street
        # @return A String value

      def street
        get_key_value('street')
      end

        # The method to set the value to street
        # @param street [String] A String

      def street=(street)
        if street!=nil and !street.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: street EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('street', street)
      end

        # The method to get the modified_by
        # @return An instance of MinifiedUser

      def modified_by
        get_key_value('Modified_By')
      end

        # The method to set the value to modified_by
        # @param modified_by [MinifiedUser] An instance of MinifiedUser

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        add_key_value('Modified_By', modified_by)
      end

        # The method to get the isonline
        # @return A Boolean value

      def isonline
        get_key_value('Isonline')
      end

        # The method to set the value to isonline
        # @param isonline [Boolean] A Boolean

      def isonline=(isonline)
        if isonline!=nil and ! [true, false].include?isonline
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: isonline EXPECTED TYPE: Boolean', nil, nil)
        end
        add_key_value('Isonline', isonline)
      end

        # The method to get the locale
        # @return A String value

      def locale
        get_key_value('locale')
      end

        # The method to set the value to locale
        # @param locale [String] A String

      def locale=(locale)
        if locale!=nil and !locale.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: locale EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('locale', locale)
      end

        # The method to get the name_format__s
        # @return An instance of Util::Choice

      def name_format__s
        get_key_value('name_format__s')
      end

        # The method to set the value to name_format__s
        # @param name_format__s [Util::Choice] An instance of Util::Choice

      def name_format__s=(name_format__s)
        if name_format__s!=nil and !name_format__s.is_a? Util::Choice
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name_format__s EXPECTED TYPE: Util::Choice', nil, nil)
        end
        add_key_value('name_format__s', name_format__s)
      end

        # The method to get the personal_account
        # @return A Boolean value

      def personal_account
        get_key_value('personal_account')
      end

        # The method to set the value to personal_account
        # @param personal_account [Boolean] A Boolean

      def personal_account=(personal_account)
        if personal_account!=nil and ! [true, false].include?personal_account
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: personal_account EXPECTED TYPE: Boolean', nil, nil)
        end
        add_key_value('personal_account', personal_account)
      end

        # The method to get the default_tab_group
        # @return A String value

      def default_tab_group
        get_key_value('default_tab_group')
      end

        # The method to set the value to default_tab_group
        # @param default_tab_group [String] A String

      def default_tab_group=(default_tab_group)
        if default_tab_group!=nil and !default_tab_group.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: default_tab_group EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('default_tab_group', default_tab_group)
      end

        # The method to get the theme
        # @return An instance of Theme

      def theme
        get_key_value('theme')
      end

        # The method to set the value to theme
        # @param theme [Theme] An instance of Theme

      def theme=(theme)
        if theme!=nil and !theme.is_a? Theme
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: theme EXPECTED TYPE: Theme', nil, nil)
        end
        add_key_value('theme', theme)
      end

        # The method to get the ntc_notification_type
        # @return An instance of Array

      def ntc_notification_type
        get_key_value('ntc_notification_type')
      end

        # The method to set the value to ntc_notification_type
        # @param ntc_notification_type [Array] An instance of Array

      def ntc_notification_type=(ntc_notification_type)
        if ntc_notification_type!=nil and !ntc_notification_type.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ntc_notification_type EXPECTED TYPE: Array', nil, nil)
        end
        add_key_value('ntc_notification_type', ntc_notification_type)
      end

        # The method to get the ntc_enabled
        # @return A Boolean value

      def ntc_enabled
        get_key_value('ntc_enabled')
      end

        # The method to set the value to ntc_enabled
        # @param ntc_enabled [Boolean] A Boolean

      def ntc_enabled=(ntc_enabled)
        if ntc_enabled!=nil and ! [true, false].include?ntc_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ntc_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        add_key_value('ntc_enabled', ntc_enabled)
      end

        # The method to get the rtl_enabled
        # @return A Boolean value

      def rtl_enabled
        get_key_value('rtl_enabled')
      end

        # The method to set the value to rtl_enabled
        # @param rtl_enabled [Boolean] A Boolean

      def rtl_enabled=(rtl_enabled)
        if rtl_enabled!=nil and ! [true, false].include?rtl_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rtl_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        add_key_value('rtl_enabled', rtl_enabled)
      end

        # The method to get the telephony_enabled
        # @return A Boolean value

      def telephony_enabled
        get_key_value('telephony_enabled')
      end

        # The method to set the value to telephony_enabled
        # @param telephony_enabled [Boolean] A Boolean

      def telephony_enabled=(telephony_enabled)
        if telephony_enabled!=nil and ! [true, false].include?telephony_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: telephony_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        add_key_value('telephony_enabled', telephony_enabled)
      end

        # The method to get the sort_order_preference
        # @return A String value

      def sort_order_preference
        get_key_value('sort_order_preference')
      end

        # The method to set the value to sort_order_preference
        # @param sort_order_preference [String] A String

      def sort_order_preference=(sort_order_preference)
        if sort_order_preference!=nil and !sort_order_preference.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sort_order_preference EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('sort_order_preference', sort_order_preference)
      end

        # The method to get the created_by_17
        # @return An instance of MinifiedUser

      def created_by_17
        get_key_value('Created_By')
      end

        # The method to set the value to created_by_17
        # @param created_by_17 [MinifiedUser] An instance of MinifiedUser

      def created_by_17=(created_by_17)
        if created_by_17!=nil and !created_by_17.is_a? MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by_17 EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        add_key_value('Created_By', created_by_17)
      end

        # The method to get the created_time_9
        # @return An instance of DateTime

      def created_time_9
        get_key_value('Created_Time')
      end

        # The method to set the value to created_time_9
        # @param created_time_9 [DateTime] An instance of DateTime

      def created_time_9=(created_time_9)
        if created_time_9!=nil and !created_time_9.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time_9 EXPECTED TYPE: DateTime', nil, nil)
        end
        add_key_value('Created_Time', created_time_9)
      end

        # The method to get the tag
        # @return An instance of Array

      def tag
        get_key_value('Tag')
      end

        # The method to set the value to tag
        # @param tag [Array] An instance of Array

      def tag=(tag)
        if tag!=nil and !tag.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tag EXPECTED TYPE: Array', nil, nil)
        end
        add_key_value('Tag', tag)
      end

        # The method to get the name
        # @return A String value

      def name
        get_key_value('name')
      end

        # The method to set the value to name
        # @param name [String] A String

      def name=(name)
        if name!=nil and !name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
        end
        add_key_value('name', name)
      end

    end
  end
end
