require_relative '../fields/association_details'
require_relative '../fields/auto_number'
require_relative '../fields/convert_mapping'
require_relative '../fields/crypt'
require_relative '../fields/currency'
require_relative '../fields/email_parser'
require_relative '../fields/external'
require_relative '../fields/fields'
require_relative '../fields/file_upolad_option'
require_relative '../fields/formula'
require_relative '../fields/hipaa_compliance'
require_relative '../fields/history_tracking'
require_relative '../fields/layout_association'
require_relative '../fields/lookup'
require_relative '../fields/multi_module_lookup'
require_relative '../fields/multiselectlookup'
require_relative '../fields/operation_type'
require_relative '../fields/pick_list_value'
require_relative '../fields/private'
require_relative '../fields/profile'
require_relative '../fields/refer_from_field'
require_relative '../fields/rollup_summary'
require_relative '../fields/subform'
require_relative '../fields/textarea'
require_relative '../fields/tooltip'
require_relative '../fields/unique'
require_relative '../fields/view_type'
require_relative '../util/model'

module ZOHOCRMSDK
  module Modules
    class ModuleFields < Fields::Fields
      include Util::Model

      # Creates an instance of ModuleFields
      def initialize
        super
        @blueprint_supported = nil
        @json_type = nil
        @length = nil
        @decimal_place = nil
        @multi_module_lookup = nil
        @sharing_properties = nil
        @currency = nil
        @file_upolad_optionlist = nil
        @lookup = nil
        @subform = nil
        @formula = nil
        @multiselectlookup = nil
        @multiuserlookup = nil
        @pick_list_values = nil
        @allowed_modules = nil
        @hipaa_compliance_enabled = nil
        @hipaa_compliance = nil
        @associated_module = nil
        @data_type = nil
        @operation_type = nil
        @system_mandatory = nil
        @webhook = nil
        @sequence_number = nil
        @default_value = nil
        @virtual_field = nil
        @field_read_only = nil
        @customizable_properties = nil
        @read_only = nil
        @custom_field = nil
        @businesscard_supported = nil
        @filterable = nil
        @visible = nil
        @available_in_user_layout = nil
        @display_field = nil
        @pick_list_values_sorted_lexically = nil
        @sortable = nil
        @layout_associations = nil
        @separator = nil
        @searchable = nil
        @enable_colour_code = nil
        @mass_update = nil
        @created_source = nil
        @type = nil
        @display_label = nil
        @column_name = nil
        @api_name = nil
        @display_type = nil
        @ui_type = nil
        @colour_code_enabled_by_system = nil
        @quick_sequence_number = nil
        @email_parser = nil
        @rollup_summary = nil
        @refer_from_field = nil
        @created_time = nil
        @modified_time = nil
        @show_type = nil
        @category = nil
        @id = nil
        @profiles = nil
        @view_type = nil
        @unique = nil
        @sub_module = nil
        @external = nil
        @private = nil
        @convert_mapping = nil
        @autonumber = nil
        @auto_number_65 = nil
        @crypt = nil
        @tooltip = nil
        @history_tracking = nil
        @association_details = nil
        @additional_column = nil
        @field_label = nil
        @global_picklist = nil
        @updateexistingrecords = nil
        @number_separator = nil
        @textarea = nil
        @static_field = nil
        @key_modified = Hash.new
      end

        # The method to get the blueprint_supported
        # @return A Boolean value

      def blueprint_supported
        @blueprint_supported
      end

        # The method to set the value to blueprint_supported
        # @param blueprint_supported [Boolean] A Boolean

      def blueprint_supported=(blueprint_supported)
        if blueprint_supported!=nil and ! [true, false].include?blueprint_supported
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: blueprint_supported EXPECTED TYPE: Boolean', nil, nil)
        end
        @blueprint_supported = blueprint_supported
        @key_modified['blueprint_supported'] = 1
      end

        # The method to get the json_type
        # @return A String value

      def json_type
        @json_type
      end

        # The method to set the value to json_type
        # @param json_type [String] A String

      def json_type=(json_type)
        if json_type!=nil and !json_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: json_type EXPECTED TYPE: String', nil, nil)
        end
        @json_type = json_type
        @key_modified['json_type'] = 1
      end

        # The method to get the length
        # @return A Integer value

      def length
        @length
      end

        # The method to set the value to length
        # @param length [Integer] A Integer

      def length=(length)
        if length!=nil and !length.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: length EXPECTED TYPE: Integer', nil, nil)
        end
        @length = length
        @key_modified['length'] = 1
      end

        # The method to get the decimal_place
        # @return A Integer value

      def decimal_place
        @decimal_place
      end

        # The method to set the value to decimal_place
        # @param decimal_place [Integer] A Integer

      def decimal_place=(decimal_place)
        if decimal_place!=nil and !decimal_place.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: decimal_place EXPECTED TYPE: Integer', nil, nil)
        end
        @decimal_place = decimal_place
        @key_modified['decimal_place'] = 1
      end

        # The method to get the multi_module_lookup
        # @return An instance of Fields::MultiModuleLookup

      def multi_module_lookup
        @multi_module_lookup
      end

        # The method to set the value to multi_module_lookup
        # @param multi_module_lookup [Fields::MultiModuleLookup] An instance of Fields::MultiModuleLookup

      def multi_module_lookup=(multi_module_lookup)
        if multi_module_lookup!=nil and !multi_module_lookup.is_a? Fields::MultiModuleLookup
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: multi_module_lookup EXPECTED TYPE: MultiModuleLookup', nil, nil)
        end
        @multi_module_lookup = multi_module_lookup
        @key_modified['multi_module_lookup'] = 1
      end

        # The method to get the sharing_properties
        # @return An instance of SharingProperties

      def sharing_properties
        @sharing_properties
      end

        # The method to set the value to sharing_properties
        # @param sharing_properties [SharingProperties] An instance of SharingProperties

      def sharing_properties=(sharing_properties)
        if sharing_properties!=nil and !sharing_properties.is_a? SharingProperties
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sharing_properties EXPECTED TYPE: SharingProperties', nil, nil)
        end
        @sharing_properties = sharing_properties
        @key_modified['sharing_properties'] = 1
      end

        # The method to get the currency
        # @return An instance of Fields::Currency

      def currency
        @currency
      end

        # The method to set the value to currency
        # @param currency [Fields::Currency] An instance of Fields::Currency

      def currency=(currency)
        if currency!=nil and !currency.is_a? Fields::Currency
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: currency EXPECTED TYPE: Currency', nil, nil)
        end
        @currency = currency
        @key_modified['currency'] = 1
      end

        # The method to get the file_upolad_optionlist
        # @return An instance of Array

      def file_upolad_optionlist
        @file_upolad_optionlist
      end

        # The method to set the value to file_upolad_optionlist
        # @param file_upolad_optionlist [Array] An instance of Array

      def file_upolad_optionlist=(file_upolad_optionlist)
        if file_upolad_optionlist!=nil and !file_upolad_optionlist.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_upolad_optionlist EXPECTED TYPE: Array', nil, nil)
        end
        @file_upolad_optionlist = file_upolad_optionlist
        @key_modified['file_upolad_optionlist'] = 1
      end

        # The method to get the lookup
        # @return An instance of Fields::Lookup

      def lookup
        @lookup
      end

        # The method to set the value to lookup
        # @param lookup [Fields::Lookup] An instance of Fields::Lookup

      def lookup=(lookup)
        if lookup!=nil and !lookup.is_a? Fields::Lookup
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lookup EXPECTED TYPE: Lookup', nil, nil)
        end
        @lookup = lookup
        @key_modified['lookup'] = 1
      end

        # The method to get the subform
        # @return An instance of Fields::Subform

      def subform
        @subform
      end

        # The method to set the value to subform
        # @param subform [Fields::Subform] An instance of Fields::Subform

      def subform=(subform)
        if subform!=nil and !subform.is_a? Fields::Subform
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: subform EXPECTED TYPE: Subform', nil, nil)
        end
        @subform = subform
        @key_modified['subform'] = 1
      end

        # The method to get the formula
        # @return An instance of Fields::Formula

      def formula
        @formula
      end

        # The method to set the value to formula
        # @param formula [Fields::Formula] An instance of Fields::Formula

      def formula=(formula)
        if formula!=nil and !formula.is_a? Fields::Formula
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: formula EXPECTED TYPE: Formula', nil, nil)
        end
        @formula = formula
        @key_modified['formula'] = 1
      end

        # The method to get the multiselectlookup
        # @return An instance of Fields::Multiselectlookup

      def multiselectlookup
        @multiselectlookup
      end

        # The method to set the value to multiselectlookup
        # @param multiselectlookup [Fields::Multiselectlookup] An instance of Fields::Multiselectlookup

      def multiselectlookup=(multiselectlookup)
        if multiselectlookup!=nil and !multiselectlookup.is_a? Fields::Multiselectlookup
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: multiselectlookup EXPECTED TYPE: Multiselectlookup', nil, nil)
        end
        @multiselectlookup = multiselectlookup
        @key_modified['multiselectlookup'] = 1
      end

        # The method to get the multiuserlookup
        # @return An instance of Fields::Multiselectlookup

      def multiuserlookup
        @multiuserlookup
      end

        # The method to set the value to multiuserlookup
        # @param multiuserlookup [Fields::Multiselectlookup] An instance of Fields::Multiselectlookup

      def multiuserlookup=(multiuserlookup)
        if multiuserlookup!=nil and !multiuserlookup.is_a? Fields::Multiselectlookup
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: multiuserlookup EXPECTED TYPE: Multiselectlookup', nil, nil)
        end
        @multiuserlookup = multiuserlookup
        @key_modified['multiuserlookup'] = 1
      end

        # The method to get the pick_list_values
        # @return An instance of Array

      def pick_list_values
        @pick_list_values
      end

        # The method to set the value to pick_list_values
        # @param pick_list_values [Array] An instance of Array

      def pick_list_values=(pick_list_values)
        if pick_list_values!=nil and !pick_list_values.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pick_list_values EXPECTED TYPE: Array', nil, nil)
        end
        @pick_list_values = pick_list_values
        @key_modified['pick_list_values'] = 1
      end

        # The method to get the allowed_modules
        # @return An instance of Array

      def allowed_modules
        @allowed_modules
      end

        # The method to set the value to allowed_modules
        # @param allowed_modules [Array] An instance of Array

      def allowed_modules=(allowed_modules)
        if allowed_modules!=nil and !allowed_modules.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: allowed_modules EXPECTED TYPE: Array', nil, nil)
        end
        @allowed_modules = allowed_modules
        @key_modified['allowed_modules'] = 1
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

        # The method to get the hipaa_compliance
        # @return An instance of Fields::HipaaCompliance

      def hipaa_compliance
        @hipaa_compliance
      end

        # The method to set the value to hipaa_compliance
        # @param hipaa_compliance [Fields::HipaaCompliance] An instance of Fields::HipaaCompliance

      def hipaa_compliance=(hipaa_compliance)
        if hipaa_compliance!=nil and !hipaa_compliance.is_a? Fields::HipaaCompliance
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: hipaa_compliance EXPECTED TYPE: HipaaCompliance', nil, nil)
        end
        @hipaa_compliance = hipaa_compliance
        @key_modified['hipaa_compliance'] = 1
      end

        # The method to get the associated_module
        # @return An instance of MinifiedModule

      def associated_module
        @associated_module
      end

        # The method to set the value to associated_module
        # @param associated_module [MinifiedModule] An instance of MinifiedModule

      def associated_module=(associated_module)
        if associated_module!=nil and !associated_module.is_a? MinifiedModule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: associated_module EXPECTED TYPE: MinifiedModule', nil, nil)
        end
        @associated_module = associated_module
        @key_modified['associated_module'] = 1
      end

        # The method to get the data_type
        # @return A String value

      def data_type
        @data_type
      end

        # The method to set the value to data_type
        # @param data_type [String] A String

      def data_type=(data_type)
        if data_type!=nil and !data_type.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data_type EXPECTED TYPE: String', nil, nil)
        end
        @data_type = data_type
        @key_modified['data_type'] = 1
      end

        # The method to get the operation_type
        # @return An instance of Fields::OperationType

      def operation_type
        @operation_type
      end

        # The method to set the value to operation_type
        # @param operation_type [Fields::OperationType] An instance of Fields::OperationType

      def operation_type=(operation_type)
        if operation_type!=nil and !operation_type.is_a? Fields::OperationType
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: operation_type EXPECTED TYPE: OperationType', nil, nil)
        end
        @operation_type = operation_type
        @key_modified['operation_type'] = 1
      end

        # The method to get the system_mandatory
        # @return A Boolean value

      def system_mandatory
        @system_mandatory
      end

        # The method to set the value to system_mandatory
        # @param system_mandatory [Boolean] A Boolean

      def system_mandatory=(system_mandatory)
        if system_mandatory!=nil and ! [true, false].include?system_mandatory
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: system_mandatory EXPECTED TYPE: Boolean', nil, nil)
        end
        @system_mandatory = system_mandatory
        @key_modified['system_mandatory'] = 1
      end

        # The method to get the webhook
        # @return A Boolean value

      def webhook
        @webhook
      end

        # The method to set the value to webhook
        # @param webhook [Boolean] A Boolean

      def webhook=(webhook)
        if webhook!=nil and ! [true, false].include?webhook
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: webhook EXPECTED TYPE: Boolean', nil, nil)
        end
        @webhook = webhook
        @key_modified['webhook'] = 1
      end

        # The method to get the sequence_number
        # @return A Integer value

      def sequence_number
        @sequence_number
      end

        # The method to set the value to sequence_number
        # @param sequence_number [Integer] A Integer

      def sequence_number=(sequence_number)
        if sequence_number!=nil and !sequence_number.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sequence_number EXPECTED TYPE: Integer', nil, nil)
        end
        @sequence_number = sequence_number
        @key_modified['sequence_number'] = 1
      end

        # The method to get the default_value
        # @return A String value

      def default_value
        @default_value
      end

        # The method to set the value to default_value
        # @param default_value [String] A String

      def default_value=(default_value)
        if default_value!=nil and !default_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: default_value EXPECTED TYPE: String', nil, nil)
        end
        @default_value = default_value
        @key_modified['default_value'] = 1
      end

        # The method to get the virtual_field
        # @return A Boolean value

      def virtual_field
        @virtual_field
      end

        # The method to set the value to virtual_field
        # @param virtual_field [Boolean] A Boolean

      def virtual_field=(virtual_field)
        if virtual_field!=nil and ! [true, false].include?virtual_field
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: virtual_field EXPECTED TYPE: Boolean', nil, nil)
        end
        @virtual_field = virtual_field
        @key_modified['virtual_field'] = 1
      end

        # The method to get the field_read_only
        # @return A Boolean value

      def field_read_only
        @field_read_only
      end

        # The method to set the value to field_read_only
        # @param field_read_only [Boolean] A Boolean

      def field_read_only=(field_read_only)
        if field_read_only!=nil and ! [true, false].include?field_read_only
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_read_only EXPECTED TYPE: Boolean', nil, nil)
        end
        @field_read_only = field_read_only
        @key_modified['field_read_only'] = 1
      end

        # The method to get the customizable_properties
        # @return An instance of Array

      def customizable_properties
        @customizable_properties
      end

        # The method to set the value to customizable_properties
        # @param customizable_properties [Array] An instance of Array

      def customizable_properties=(customizable_properties)
        if customizable_properties!=nil and !customizable_properties.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: customizable_properties EXPECTED TYPE: Array', nil, nil)
        end
        @customizable_properties = customizable_properties
        @key_modified['customizable_properties'] = 1
      end

        # The method to get the read_only
        # @return A Boolean value

      def read_only
        @read_only
      end

        # The method to set the value to read_only
        # @param read_only [Boolean] A Boolean

      def read_only=(read_only)
        if read_only!=nil and ! [true, false].include?read_only
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: read_only EXPECTED TYPE: Boolean', nil, nil)
        end
        @read_only = read_only
        @key_modified['read_only'] = 1
      end

        # The method to get the custom_field
        # @return A Boolean value

      def custom_field
        @custom_field
      end

        # The method to set the value to custom_field
        # @param custom_field [Boolean] A Boolean

      def custom_field=(custom_field)
        if custom_field!=nil and ! [true, false].include?custom_field
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: custom_field EXPECTED TYPE: Boolean', nil, nil)
        end
        @custom_field = custom_field
        @key_modified['custom_field'] = 1
      end

        # The method to get the businesscard_supported
        # @return A Boolean value

      def businesscard_supported
        @businesscard_supported
      end

        # The method to set the value to businesscard_supported
        # @param businesscard_supported [Boolean] A Boolean

      def businesscard_supported=(businesscard_supported)
        if businesscard_supported!=nil and ! [true, false].include?businesscard_supported
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: businesscard_supported EXPECTED TYPE: Boolean', nil, nil)
        end
        @businesscard_supported = businesscard_supported
        @key_modified['businesscard_supported'] = 1
      end

        # The method to get the filterable
        # @return A Boolean value

      def filterable
        @filterable
      end

        # The method to set the value to filterable
        # @param filterable [Boolean] A Boolean

      def filterable=(filterable)
        if filterable!=nil and ! [true, false].include?filterable
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: filterable EXPECTED TYPE: Boolean', nil, nil)
        end
        @filterable = filterable
        @key_modified['filterable'] = 1
      end

        # The method to get the visible
        # @return A Boolean value

      def visible
        @visible
      end

        # The method to set the value to visible
        # @param visible [Boolean] A Boolean

      def visible=(visible)
        if visible!=nil and ! [true, false].include?visible
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: visible EXPECTED TYPE: Boolean', nil, nil)
        end
        @visible = visible
        @key_modified['visible'] = 1
      end

        # The method to get the available_in_user_layout
        # @return A Boolean value

      def available_in_user_layout
        @available_in_user_layout
      end

        # The method to set the value to available_in_user_layout
        # @param available_in_user_layout [Boolean] A Boolean

      def available_in_user_layout=(available_in_user_layout)
        if available_in_user_layout!=nil and ! [true, false].include?available_in_user_layout
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: available_in_user_layout EXPECTED TYPE: Boolean', nil, nil)
        end
        @available_in_user_layout = available_in_user_layout
        @key_modified['available_in_user_layout'] = 1
      end

        # The method to get the display_field
        # @return A Boolean value

      def display_field
        @display_field
      end

        # The method to set the value to display_field
        # @param display_field [Boolean] A Boolean

      def display_field=(display_field)
        if display_field!=nil and ! [true, false].include?display_field
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_field EXPECTED TYPE: Boolean', nil, nil)
        end
        @display_field = display_field
        @key_modified['display_field'] = 1
      end

        # The method to get the pick_list_values_sorted_lexically
        # @return A Boolean value

      def pick_list_values_sorted_lexically
        @pick_list_values_sorted_lexically
      end

        # The method to set the value to pick_list_values_sorted_lexically
        # @param pick_list_values_sorted_lexically [Boolean] A Boolean

      def pick_list_values_sorted_lexically=(pick_list_values_sorted_lexically)
        if pick_list_values_sorted_lexically!=nil and ! [true, false].include?pick_list_values_sorted_lexically
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: pick_list_values_sorted_lexically EXPECTED TYPE: Boolean', nil, nil)
        end
        @pick_list_values_sorted_lexically = pick_list_values_sorted_lexically
        @key_modified['pick_list_values_sorted_lexically'] = 1
      end

        # The method to get the sortable
        # @return A Boolean value

      def sortable
        @sortable
      end

        # The method to set the value to sortable
        # @param sortable [Boolean] A Boolean

      def sortable=(sortable)
        if sortable!=nil and ! [true, false].include?sortable
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sortable EXPECTED TYPE: Boolean', nil, nil)
        end
        @sortable = sortable
        @key_modified['sortable'] = 1
      end

        # The method to get the layout_associations
        # @return An instance of Array

      def layout_associations
        @layout_associations
      end

        # The method to set the value to layout_associations
        # @param layout_associations [Array] An instance of Array

      def layout_associations=(layout_associations)
        if layout_associations!=nil and !layout_associations.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: layout_associations EXPECTED TYPE: Array', nil, nil)
        end
        @layout_associations = layout_associations
        @key_modified['layout_associations'] = 1
      end

        # The method to get the separator
        # @return A Boolean value

      def separator
        @separator
      end

        # The method to set the value to separator
        # @param separator [Boolean] A Boolean

      def separator=(separator)
        if separator!=nil and ! [true, false].include?separator
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: separator EXPECTED TYPE: Boolean', nil, nil)
        end
        @separator = separator
        @key_modified['separator'] = 1
      end

        # The method to get the searchable
        # @return A Boolean value

      def searchable
        @searchable
      end

        # The method to set the value to searchable
        # @param searchable [Boolean] A Boolean

      def searchable=(searchable)
        if searchable!=nil and ! [true, false].include?searchable
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: searchable EXPECTED TYPE: Boolean', nil, nil)
        end
        @searchable = searchable
        @key_modified['searchable'] = 1
      end

        # The method to get the enable_colour_code
        # @return A Boolean value

      def enable_colour_code
        @enable_colour_code
      end

        # The method to set the value to enable_colour_code
        # @param enable_colour_code [Boolean] A Boolean

      def enable_colour_code=(enable_colour_code)
        if enable_colour_code!=nil and ! [true, false].include?enable_colour_code
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: enable_colour_code EXPECTED TYPE: Boolean', nil, nil)
        end
        @enable_colour_code = enable_colour_code
        @key_modified['enable_colour_code'] = 1
      end

        # The method to get the mass_update
        # @return A Boolean value

      def mass_update
        @mass_update
      end

        # The method to set the value to mass_update
        # @param mass_update [Boolean] A Boolean

      def mass_update=(mass_update)
        if mass_update!=nil and ! [true, false].include?mass_update
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mass_update EXPECTED TYPE: Boolean', nil, nil)
        end
        @mass_update = mass_update
        @key_modified['mass_update'] = 1
      end

        # The method to get the created_source
        # @return A String value

      def created_source
        @created_source
      end

        # The method to set the value to created_source
        # @param created_source [String] A String

      def created_source=(created_source)
        if created_source!=nil and !created_source.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_source EXPECTED TYPE: String', nil, nil)
        end
        @created_source = created_source
        @key_modified['created_source'] = 1
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

        # The method to get the display_label
        # @return A String value

      def display_label
        @display_label
      end

        # The method to set the value to display_label
        # @param display_label [String] A String

      def display_label=(display_label)
        if display_label!=nil and !display_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_label EXPECTED TYPE: String', nil, nil)
        end
        @display_label = display_label
        @key_modified['display_label'] = 1
      end

        # The method to get the column_name
        # @return A String value

      def column_name
        @column_name
      end

        # The method to set the value to column_name
        # @param column_name [String] A String

      def column_name=(column_name)
        if column_name!=nil and !column_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: column_name EXPECTED TYPE: String', nil, nil)
        end
        @column_name = column_name
        @key_modified['column_name'] = 1
      end

        # The method to get the api_name
        # @return A String value

      def api_name
        @api_name
      end

        # The method to set the value to api_name
        # @param api_name [String] A String

      def api_name=(api_name)
        if api_name!=nil and !api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
        end
        @api_name = api_name
        @key_modified['api_name'] = 1
      end

        # The method to get the display_type
        # @return A Integer value

      def display_type
        @display_type
      end

        # The method to set the value to display_type
        # @param display_type [Integer] A Integer

      def display_type=(display_type)
        if display_type!=nil and !display_type.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_type EXPECTED TYPE: Integer', nil, nil)
        end
        @display_type = display_type
        @key_modified['display_type'] = 1
      end

        # The method to get the ui_type
        # @return A Integer value

      def ui_type
        @ui_type
      end

        # The method to set the value to ui_type
        # @param ui_type [Integer] A Integer

      def ui_type=(ui_type)
        if ui_type!=nil and !ui_type.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ui_type EXPECTED TYPE: Integer', nil, nil)
        end
        @ui_type = ui_type
        @key_modified['ui_type'] = 1
      end

        # The method to get the colour_code_enabled_by_system
        # @return A Boolean value

      def colour_code_enabled_by_system
        @colour_code_enabled_by_system
      end

        # The method to set the value to colour_code_enabled_by_system
        # @param colour_code_enabled_by_system [Boolean] A Boolean

      def colour_code_enabled_by_system=(colour_code_enabled_by_system)
        if colour_code_enabled_by_system!=nil and ! [true, false].include?colour_code_enabled_by_system
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: colour_code_enabled_by_system EXPECTED TYPE: Boolean', nil, nil)
        end
        @colour_code_enabled_by_system = colour_code_enabled_by_system
        @key_modified['colour_code_enabled_by_system'] = 1
      end

        # The method to get the quick_sequence_number
        # @return A String value

      def quick_sequence_number
        @quick_sequence_number
      end

        # The method to set the value to quick_sequence_number
        # @param quick_sequence_number [String] A String

      def quick_sequence_number=(quick_sequence_number)
        if quick_sequence_number!=nil and !quick_sequence_number.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: quick_sequence_number EXPECTED TYPE: String', nil, nil)
        end
        @quick_sequence_number = quick_sequence_number
        @key_modified['quick_sequence_number'] = 1
      end

        # The method to get the email_parser
        # @return An instance of Fields::EmailParser

      def email_parser
        @email_parser
      end

        # The method to set the value to email_parser
        # @param email_parser [Fields::EmailParser] An instance of Fields::EmailParser

      def email_parser=(email_parser)
        if email_parser!=nil and !email_parser.is_a? Fields::EmailParser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email_parser EXPECTED TYPE: EmailParser', nil, nil)
        end
        @email_parser = email_parser
        @key_modified['email_parser'] = 1
      end

        # The method to get the rollup_summary
        # @return An instance of Fields::RollupSummary

      def rollup_summary
        @rollup_summary
      end

        # The method to set the value to rollup_summary
        # @param rollup_summary [Fields::RollupSummary] An instance of Fields::RollupSummary

      def rollup_summary=(rollup_summary)
        if rollup_summary!=nil and !rollup_summary.is_a? Fields::RollupSummary
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rollup_summary EXPECTED TYPE: RollupSummary', nil, nil)
        end
        @rollup_summary = rollup_summary
        @key_modified['rollup_summary'] = 1
      end

        # The method to get the refer_from_field
        # @return An instance of Fields::ReferFromField

      def refer_from_field
        @refer_from_field
      end

        # The method to set the value to refer_from_field
        # @param refer_from_field [Fields::ReferFromField] An instance of Fields::ReferFromField

      def refer_from_field=(refer_from_field)
        if refer_from_field!=nil and !refer_from_field.is_a? Fields::ReferFromField
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: refer_from_field EXPECTED TYPE: ReferFromField', nil, nil)
        end
        @refer_from_field = refer_from_field
        @key_modified['refer_from_field'] = 1
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

        # The method to get the show_type
        # @return A Integer value

      def show_type
        @show_type
      end

        # The method to set the value to show_type
        # @param show_type [Integer] A Integer

      def show_type=(show_type)
        if show_type!=nil and !show_type.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show_type EXPECTED TYPE: Integer', nil, nil)
        end
        @show_type = show_type
        @key_modified['show_type'] = 1
      end

        # The method to get the category
        # @return A Integer value

      def category
        @category
      end

        # The method to set the value to category
        # @param category [Integer] A Integer

      def category=(category)
        if category!=nil and !category.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: category EXPECTED TYPE: Integer', nil, nil)
        end
        @category = category
        @key_modified['category'] = 1
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

        # The method to get the profiles
        # @return An instance of Array

      def profiles
        @profiles
      end

        # The method to set the value to profiles
        # @param profiles [Array] An instance of Array

      def profiles=(profiles)
        if profiles!=nil and !profiles.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: profiles EXPECTED TYPE: Array', nil, nil)
        end
        @profiles = profiles
        @key_modified['profiles'] = 1
      end

        # The method to get the view_type
        # @return An instance of Fields::ViewType

      def view_type
        @view_type
      end

        # The method to set the value to view_type
        # @param view_type [Fields::ViewType] An instance of Fields::ViewType

      def view_type=(view_type)
        if view_type!=nil and !view_type.is_a? Fields::ViewType
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: view_type EXPECTED TYPE: ViewType', nil, nil)
        end
        @view_type = view_type
        @key_modified['view_type'] = 1
      end

        # The method to get the unique
        # @return An instance of Fields::Unique

      def unique
        @unique
      end

        # The method to set the value to unique
        # @param unique [Fields::Unique] An instance of Fields::Unique

      def unique=(unique)
        if unique!=nil and !unique.is_a? Fields::Unique
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: unique EXPECTED TYPE: Unique', nil, nil)
        end
        @unique = unique
        @key_modified['unique'] = 1
      end

        # The method to get the sub_module
        # @return An instance of MinifiedModule

      def sub_module
        @sub_module
      end

        # The method to set the value to sub_module
        # @param sub_module [MinifiedModule] An instance of MinifiedModule

      def sub_module=(sub_module)
        if sub_module!=nil and !sub_module.is_a? MinifiedModule
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sub_module EXPECTED TYPE: MinifiedModule', nil, nil)
        end
        @sub_module = sub_module
        @key_modified['sub_module'] = 1
      end

        # The method to get the external
        # @return An instance of Fields::External

      def external
        @external
      end

        # The method to set the value to external
        # @param external [Fields::External] An instance of Fields::External

      def external=(external)
        if external!=nil and !external.is_a? Fields::External
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: external EXPECTED TYPE: External', nil, nil)
        end
        @external = external
        @key_modified['external'] = 1
      end

        # The method to get the private
        # @return An instance of Fields::Private

      def private
        @private
      end

        # The method to set the value to private
        # @param private [Fields::Private] An instance of Fields::Private

      def private=(private)
        if private!=nil and !private.is_a? Fields::Private
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: private EXPECTED TYPE: Private', nil, nil)
        end
        @private = private
        @key_modified['private'] = 1
      end

        # The method to get the convert_mapping
        # @return An instance of Fields::ConvertMapping

      def convert_mapping
        @convert_mapping
      end

        # The method to set the value to convert_mapping
        # @param convert_mapping [Fields::ConvertMapping] An instance of Fields::ConvertMapping

      def convert_mapping=(convert_mapping)
        if convert_mapping!=nil and !convert_mapping.is_a? Fields::ConvertMapping
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: convert_mapping EXPECTED TYPE: ConvertMapping', nil, nil)
        end
        @convert_mapping = convert_mapping
        @key_modified['convert_mapping'] = 1
      end

        # The method to get the autonumber
        # @return An instance of Fields::AutoNumber

      def autonumber
        @autonumber
      end

        # The method to set the value to autonumber
        # @param autonumber [Fields::AutoNumber] An instance of Fields::AutoNumber

      def autonumber=(autonumber)
        if autonumber!=nil and !autonumber.is_a? Fields::AutoNumber
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: autonumber EXPECTED TYPE: AutoNumber', nil, nil)
        end
        @autonumber = autonumber
        @key_modified['autonumber'] = 1
      end

        # The method to get the auto_number_65
        # @return An instance of Fields::AutoNumber

      def auto_number_65
        @auto_number_65
      end

        # The method to set the value to auto_number_65
        # @param auto_number_65 [Fields::AutoNumber] An instance of Fields::AutoNumber

      def auto_number_65=(auto_number_65)
        if auto_number_65!=nil and !auto_number_65.is_a? Fields::AutoNumber
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: auto_number_65 EXPECTED TYPE: AutoNumber', nil, nil)
        end
        @auto_number_65 = auto_number_65
        @key_modified['auto_number'] = 1
      end

        # The method to get the crypt
        # @return An instance of Fields::Crypt

      def crypt
        @crypt
      end

        # The method to set the value to crypt
        # @param crypt [Fields::Crypt] An instance of Fields::Crypt

      def crypt=(crypt)
        if crypt!=nil and !crypt.is_a? Fields::Crypt
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: crypt EXPECTED TYPE: Crypt', nil, nil)
        end
        @crypt = crypt
        @key_modified['crypt'] = 1
      end

        # The method to get the tooltip
        # @return An instance of Fields::Tooltip

      def tooltip
        @tooltip
      end

        # The method to set the value to tooltip
        # @param tooltip [Fields::Tooltip] An instance of Fields::Tooltip

      def tooltip=(tooltip)
        if tooltip!=nil and !tooltip.is_a? Fields::Tooltip
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tooltip EXPECTED TYPE: Tooltip', nil, nil)
        end
        @tooltip = tooltip
        @key_modified['tooltip'] = 1
      end

        # The method to get the history_tracking
        # @return An instance of Fields::HistoryTracking

      def history_tracking
        @history_tracking
      end

        # The method to set the value to history_tracking
        # @param history_tracking [Fields::HistoryTracking] An instance of Fields::HistoryTracking

      def history_tracking=(history_tracking)
        if history_tracking!=nil and !history_tracking.is_a? Fields::HistoryTracking
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: history_tracking EXPECTED TYPE: HistoryTracking', nil, nil)
        end
        @history_tracking = history_tracking
        @key_modified['history_tracking'] = 1
      end

        # The method to get the association_details
        # @return An instance of Fields::AssociationDetails

      def association_details
        @association_details
      end

        # The method to set the value to association_details
        # @param association_details [Fields::AssociationDetails] An instance of Fields::AssociationDetails

      def association_details=(association_details)
        if association_details!=nil and !association_details.is_a? Fields::AssociationDetails
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: association_details EXPECTED TYPE: AssociationDetails', nil, nil)
        end
        @association_details = association_details
        @key_modified['association_details'] = 1
      end

        # The method to get the additional_column
        # @return A String value

      def additional_column
        @additional_column
      end

        # The method to set the value to additional_column
        # @param additional_column [String] A String

      def additional_column=(additional_column)
        if additional_column!=nil and !additional_column.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: additional_column EXPECTED TYPE: String', nil, nil)
        end
        @additional_column = additional_column
        @key_modified['additional_column'] = 1
      end

        # The method to get the field_label
        # @return A String value

      def field_label
        @field_label
      end

        # The method to set the value to field_label
        # @param field_label [String] A String

      def field_label=(field_label)
        if field_label!=nil and !field_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_label EXPECTED TYPE: String', nil, nil)
        end
        @field_label = field_label
        @key_modified['field_label'] = 1
      end

        # The method to get the global_picklist
        # @return A lang::Object value

      def global_picklist
        @global_picklist
      end

        # The method to set the value to global_picklist
        # @param global_picklist [lang::Object] A lang::Object

      def global_picklist=(global_picklist)
        @global_picklist = global_picklist
        @key_modified['global_picklist'] = 1
      end

        # The method to get the updateexistingrecords
        # @return A Boolean value

      def updateexistingrecords
        @updateexistingrecords
      end

        # The method to set the value to updateexistingrecords
        # @param updateexistingrecords [Boolean] A Boolean

      def updateexistingrecords=(updateexistingrecords)
        if updateexistingrecords!=nil and ! [true, false].include?updateexistingrecords
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: updateexistingrecords EXPECTED TYPE: Boolean', nil, nil)
        end
        @updateexistingrecords = updateexistingrecords
        @key_modified['_update_existing_records'] = 1
      end

        # The method to get the number_separator
        # @return A Boolean value

      def number_separator
        @number_separator
      end

        # The method to set the value to number_separator
        # @param number_separator [Boolean] A Boolean

      def number_separator=(number_separator)
        if number_separator!=nil and ! [true, false].include?number_separator
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: number_separator EXPECTED TYPE: Boolean', nil, nil)
        end
        @number_separator = number_separator
        @key_modified['number_separator'] = 1
      end

        # The method to get the textarea
        # @return An instance of Fields::Textarea

      def textarea
        @textarea
      end

        # The method to set the value to textarea
        # @param textarea [Fields::Textarea] An instance of Fields::Textarea

      def textarea=(textarea)
        if textarea!=nil and !textarea.is_a? Fields::Textarea
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: textarea EXPECTED TYPE: Textarea', nil, nil)
        end
        @textarea = textarea
        @key_modified['textarea'] = 1
      end

        # The method to get the static_field
        # @return A Boolean value

      def static_field
        @static_field
      end

        # The method to set the value to static_field
        # @param static_field [Boolean] A Boolean

      def static_field=(static_field)
        if static_field!=nil and ! [true, false].include?static_field
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: static_field EXPECTED TYPE: Boolean', nil, nil)
        end
        @static_field = static_field
        @key_modified['static_field'] = 1
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
