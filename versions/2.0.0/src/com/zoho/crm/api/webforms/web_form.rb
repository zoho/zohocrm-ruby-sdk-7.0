require_relative '../util/model'

module ZOHOCRMSDK
  module Webforms
    class WebForm
      include Util::Model

      # Creates an instance of WebForm
      def initialize
        @google_site = nil
        @encrypted_form_id = nil
        @owner = nil
        @user_type = nil
        @acknowledge_visitor = nil
        @button_attributes = nil
        @encrypted_zgid = nil
        @created_time = nil
        @analytics_data = nil
        @module_1 = nil
        @encrypted_module = nil
        @active = nil
        @adword_enabled = nil
        @notify_owner = nil
        @created_by = nil
        @form_attributes = nil
        @location_url = nil
        @landing_url = nil
        @double_optin_enabled = nil
        @layout = nil
        @tags = nil
        @approval_request = nil
        @type = nil
        @create_contact = nil
        @assignment_rule = nil
        @name = nil
        @id = nil
        @spam_control = nil
        @fields = nil
        @form_fields = nil
        @abtesting = nil
        @visitor_tracking = nil
        @last_submitted_time = nil
        @action_on_submit = nil
        @action_value = nil
        @suggestion = nil
        @embed_code = nil
        @code_formats = nil
        @source_code = nil
        @iframe_code = nil
        @key_modified = Hash.new
      end

        # The method to get the google_site
        # @return A String value

      def google_site
        @google_site
      end

        # The method to set the value to google_site
        # @param google_site [String] A String

      def google_site=(google_site)
        if google_site!=nil and !google_site.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: google_site EXPECTED TYPE: String', nil, nil)
        end
        @google_site = google_site
        @key_modified['google_site'] = 1
      end

        # The method to get the encrypted_form_id
        # @return A String value

      def encrypted_form_id
        @encrypted_form_id
      end

        # The method to set the value to encrypted_form_id
        # @param encrypted_form_id [String] A String

      def encrypted_form_id=(encrypted_form_id)
        if encrypted_form_id!=nil and !encrypted_form_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: encrypted_form_id EXPECTED TYPE: String', nil, nil)
        end
        @encrypted_form_id = encrypted_form_id
        @key_modified['encrypted_form_id'] = 1
      end

        # The method to get the owner
        # @return An instance of Owner

      def owner
        @owner
      end

        # The method to set the value to owner
        # @param owner [Owner] An instance of Owner

      def owner=(owner)
        if owner!=nil and !owner.is_a? Owner
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: owner EXPECTED TYPE: Owner', nil, nil)
        end
        @owner = owner
        @key_modified['owner'] = 1
      end

        # The method to get the user_type
        # @return An instance of User

      def user_type
        @user_type
      end

        # The method to set the value to user_type
        # @param user_type [User] An instance of User

      def user_type=(user_type)
        if user_type!=nil and !user_type.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_type EXPECTED TYPE: User', nil, nil)
        end
        @user_type = user_type
        @key_modified['user_type'] = 1
      end

        # The method to get the acknowledge_visitor
        # @return An instance of AcknowledgeVisitors

      def acknowledge_visitor
        @acknowledge_visitor
      end

        # The method to set the value to acknowledge_visitor
        # @param acknowledge_visitor [AcknowledgeVisitors] An instance of AcknowledgeVisitors

      def acknowledge_visitor=(acknowledge_visitor)
        if acknowledge_visitor!=nil and !acknowledge_visitor.is_a? AcknowledgeVisitors
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: acknowledge_visitor EXPECTED TYPE: AcknowledgeVisitors', nil, nil)
        end
        @acknowledge_visitor = acknowledge_visitor
        @key_modified['acknowledge_visitor'] = 1
      end

        # The method to get the button_attributes
        # @return An instance of Array

      def button_attributes
        @button_attributes
      end

        # The method to set the value to button_attributes
        # @param button_attributes [Array] An instance of Array

      def button_attributes=(button_attributes)
        if button_attributes!=nil and !button_attributes.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: button_attributes EXPECTED TYPE: Array', nil, nil)
        end
        @button_attributes = button_attributes
        @key_modified['button_attributes'] = 1
      end

        # The method to get the encrypted_zgid
        # @return A String value

      def encrypted_zgid
        @encrypted_zgid
      end

        # The method to set the value to encrypted_zgid
        # @param encrypted_zgid [String] A String

      def encrypted_zgid=(encrypted_zgid)
        if encrypted_zgid!=nil and !encrypted_zgid.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: encrypted_zgid EXPECTED TYPE: String', nil, nil)
        end
        @encrypted_zgid = encrypted_zgid
        @key_modified['encrypted_zgid'] = 1
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

        # The method to get the analytics_data
        # @return An instance of AnalyticsData

      def analytics_data
        @analytics_data
      end

        # The method to set the value to analytics_data
        # @param analytics_data [AnalyticsData] An instance of AnalyticsData

      def analytics_data=(analytics_data)
        if analytics_data!=nil and !analytics_data.is_a? AnalyticsData
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: analytics_data EXPECTED TYPE: AnalyticsData', nil, nil)
        end
        @analytics_data = analytics_data
        @key_modified['analytics_data'] = 1
      end

        # The method to get the module
        # @return An instance of Module

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [Module] An instance of Module

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? Module
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: Module', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the encrypted_module
        # @return A String value

      def encrypted_module
        @encrypted_module
      end

        # The method to set the value to encrypted_module
        # @param encrypted_module [String] A String

      def encrypted_module=(encrypted_module)
        if encrypted_module!=nil and !encrypted_module.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: encrypted_module EXPECTED TYPE: String', nil, nil)
        end
        @encrypted_module = encrypted_module
        @key_modified['encrypted_module'] = 1
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

        # The method to get the adword_enabled
        # @return A Boolean value

      def adword_enabled
        @adword_enabled
      end

        # The method to set the value to adword_enabled
        # @param adword_enabled [Boolean] A Boolean

      def adword_enabled=(adword_enabled)
        if adword_enabled!=nil and ! [true, false].include?adword_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: adword_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @adword_enabled = adword_enabled
        @key_modified['adword_enabled'] = 1
      end

        # The method to get the notify_owner
        # @return An instance of Owner

      def notify_owner
        @notify_owner
      end

        # The method to set the value to notify_owner
        # @param notify_owner [Owner] An instance of Owner

      def notify_owner=(notify_owner)
        if notify_owner!=nil and !notify_owner.is_a? Owner
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: notify_owner EXPECTED TYPE: Owner', nil, nil)
        end
        @notify_owner = notify_owner
        @key_modified['notify_owner'] = 1
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

        # The method to get the form_attributes
        # @return An instance of FormAttributes

      def form_attributes
        @form_attributes
      end

        # The method to set the value to form_attributes
        # @param form_attributes [FormAttributes] An instance of FormAttributes

      def form_attributes=(form_attributes)
        if form_attributes!=nil and !form_attributes.is_a? FormAttributes
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: form_attributes EXPECTED TYPE: FormAttributes', nil, nil)
        end
        @form_attributes = form_attributes
        @key_modified['form_attributes'] = 1
      end

        # The method to get the location_url
        # @return An instance of Array

      def location_url
        @location_url
      end

        # The method to set the value to location_url
        # @param location_url [Array] An instance of Array

      def location_url=(location_url)
        if location_url!=nil and !location_url.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: location_url EXPECTED TYPE: Array', nil, nil)
        end
        @location_url = location_url
        @key_modified['location_url'] = 1
      end

        # The method to get the landing_url
        # @return A String value

      def landing_url
        @landing_url
      end

        # The method to set the value to landing_url
        # @param landing_url [String] A String

      def landing_url=(landing_url)
        if landing_url!=nil and !landing_url.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: landing_url EXPECTED TYPE: String', nil, nil)
        end
        @landing_url = landing_url
        @key_modified['landing_url'] = 1
      end

        # The method to get the double_optin_enabled
        # @return A Boolean value

      def double_optin_enabled
        @double_optin_enabled
      end

        # The method to set the value to double_optin_enabled
        # @param double_optin_enabled [Boolean] A Boolean

      def double_optin_enabled=(double_optin_enabled)
        if double_optin_enabled!=nil and ! [true, false].include?double_optin_enabled
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: double_optin_enabled EXPECTED TYPE: Boolean', nil, nil)
        end
        @double_optin_enabled = double_optin_enabled
        @key_modified['double_optin_enabled'] = 1
      end

        # The method to get the layout
        # @return An instance of Layout

      def layout
        @layout
      end

        # The method to set the value to layout
        # @param layout [Layout] An instance of Layout

      def layout=(layout)
        if layout!=nil and !layout.is_a? Layout
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layout EXPECTED TYPE: Layout', nil, nil)
        end
        @layout = layout
        @key_modified['layout'] = 1
      end

        # The method to get the tags
        # @return An instance of Array

      def tags
        @tags
      end

        # The method to set the value to tags
        # @param tags [Array] An instance of Array

      def tags=(tags)
        if tags!=nil and !tags.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tags EXPECTED TYPE: Array', nil, nil)
        end
        @tags = tags
        @key_modified['tags'] = 1
      end

        # The method to get the approval_request
        # @return A Boolean value

      def approval_request
        @approval_request
      end

        # The method to set the value to approval_request
        # @param approval_request [Boolean] A Boolean

      def approval_request=(approval_request)
        if approval_request!=nil and ! [true, false].include?approval_request
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: approval_request EXPECTED TYPE: Boolean', nil, nil)
        end
        @approval_request = approval_request
        @key_modified['approval_request'] = 1
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

        # The method to get the create_contact
        # @return A Boolean value

      def create_contact
        @create_contact
      end

        # The method to set the value to create_contact
        # @param create_contact [Boolean] A Boolean

      def create_contact=(create_contact)
        if create_contact!=nil and ! [true, false].include?create_contact
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: create_contact EXPECTED TYPE: Boolean', nil, nil)
        end
        @create_contact = create_contact
        @key_modified['create_contact'] = 1
      end

        # The method to get the assignment_rule
        # @return An instance of AssignmentRule

      def assignment_rule
        @assignment_rule
      end

        # The method to set the value to assignment_rule
        # @param assignment_rule [AssignmentRule] An instance of AssignmentRule

      def assignment_rule=(assignment_rule)
        if assignment_rule!=nil and !assignment_rule.is_a? AssignmentRule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: assignment_rule EXPECTED TYPE: AssignmentRule', nil, nil)
        end
        @assignment_rule = assignment_rule
        @key_modified['assignment_rule'] = 1
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

        # The method to get the spam_control
        # @return An instance of SpamControll

      def spam_control
        @spam_control
      end

        # The method to set the value to spam_control
        # @param spam_control [SpamControll] An instance of SpamControll

      def spam_control=(spam_control)
        if spam_control!=nil and !spam_control.is_a? SpamControll
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: spam_control EXPECTED TYPE: SpamControll', nil, nil)
        end
        @spam_control = spam_control
        @key_modified['spam_control'] = 1
      end

        # The method to get the fields
        # @return An instance of Array

      def fields
        @fields
      end

        # The method to set the value to fields
        # @param fields [Array] An instance of Array

      def fields=(fields)
        if fields!=nil and !fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: Array', nil, nil)
        end
        @fields = fields
        @key_modified['fields'] = 1
      end

        # The method to get the form_fields
        # @return An instance of Array

      def form_fields
        @form_fields
      end

        # The method to set the value to form_fields
        # @param form_fields [Array] An instance of Array

      def form_fields=(form_fields)
        if form_fields!=nil and !form_fields.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: form_fields EXPECTED TYPE: Array', nil, nil)
        end
        @form_fields = form_fields
        @key_modified['form_fields'] = 1
      end

        # The method to get the abtesting
        # @return An instance of Array

      def abtesting
        @abtesting
      end

        # The method to set the value to abtesting
        # @param abtesting [Array] An instance of Array

      def abtesting=(abtesting)
        if abtesting!=nil and !abtesting.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: abtesting EXPECTED TYPE: Array', nil, nil)
        end
        @abtesting = abtesting
        @key_modified['abtesting'] = 1
      end

        # The method to get the visitor_tracking
        # @return A String value

      def visitor_tracking
        @visitor_tracking
      end

        # The method to set the value to visitor_tracking
        # @param visitor_tracking [String] A String

      def visitor_tracking=(visitor_tracking)
        if visitor_tracking!=nil and !visitor_tracking.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: visitor_tracking EXPECTED TYPE: String', nil, nil)
        end
        @visitor_tracking = visitor_tracking
        @key_modified['visitor_tracking'] = 1
      end

        # The method to get the last_submitted_time
        # @return An instance of DateTime

      def last_submitted_time
        @last_submitted_time
      end

        # The method to set the value to last_submitted_time
        # @param last_submitted_time [DateTime] An instance of DateTime

      def last_submitted_time=(last_submitted_time)
        if last_submitted_time!=nil and !last_submitted_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: last_submitted_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @last_submitted_time = last_submitted_time
        @key_modified['last_submitted_time'] = 1
      end

        # The method to get the action_on_submit
        # @return A String value

      def action_on_submit
        @action_on_submit
      end

        # The method to set the value to action_on_submit
        # @param action_on_submit [String] A String

      def action_on_submit=(action_on_submit)
        if action_on_submit!=nil and !action_on_submit.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: action_on_submit EXPECTED TYPE: String', nil, nil)
        end
        @action_on_submit = action_on_submit
        @key_modified['action_on_submit'] = 1
      end

        # The method to get the action_value
        # @return A String value

      def action_value
        @action_value
      end

        # The method to set the value to action_value
        # @param action_value [String] A String

      def action_value=(action_value)
        if action_value!=nil and !action_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: action_value EXPECTED TYPE: String', nil, nil)
        end
        @action_value = action_value
        @key_modified['action_value'] = 1
      end

        # The method to get the suggestion
        # @return An instance of Suggestion

      def suggestion
        @suggestion
      end

        # The method to set the value to suggestion
        # @param suggestion [Suggestion] An instance of Suggestion

      def suggestion=(suggestion)
        if suggestion!=nil and !suggestion.is_a? Suggestion
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: suggestion EXPECTED TYPE: Suggestion', nil, nil)
        end
        @suggestion = suggestion
        @key_modified['suggestion'] = 1
      end

        # The method to get the embed_code
        # @return A String value

      def embed_code
        @embed_code
      end

        # The method to set the value to embed_code
        # @param embed_code [String] A String

      def embed_code=(embed_code)
        if embed_code!=nil and !embed_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: embed_code EXPECTED TYPE: String', nil, nil)
        end
        @embed_code = embed_code
        @key_modified['embed_code'] = 1
      end

        # The method to get the code_formats
        # @return An instance of Array

      def code_formats
        @code_formats
      end

        # The method to set the value to code_formats
        # @param code_formats [Array] An instance of Array

      def code_formats=(code_formats)
        if code_formats!=nil and !code_formats.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: code_formats EXPECTED TYPE: Array', nil, nil)
        end
        @code_formats = code_formats
        @key_modified['code_formats'] = 1
      end

        # The method to get the source_code
        # @return A String value

      def source_code
        @source_code
      end

        # The method to set the value to source_code
        # @param source_code [String] A String

      def source_code=(source_code)
        if source_code!=nil and !source_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: source_code EXPECTED TYPE: String', nil, nil)
        end
        @source_code = source_code
        @key_modified['source_code'] = 1
      end

        # The method to get the iframe_code
        # @return A String value

      def iframe_code
        @iframe_code
      end

        # The method to set the value to iframe_code
        # @param iframe_code [String] A String

      def iframe_code=(iframe_code)
        if iframe_code!=nil and !iframe_code.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: iframe_code EXPECTED TYPE: String', nil, nil)
        end
        @iframe_code = iframe_code
        @key_modified['iframe_code'] = 1
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
