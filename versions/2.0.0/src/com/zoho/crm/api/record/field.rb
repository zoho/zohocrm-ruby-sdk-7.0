require_relative '../layouts/layouts'
require_relative '../modules/modules'
require_relative '../record/comment'
require_relative '../record/consent'
require_relative '../record/participants'
require_relative '../record/pricing_details'
require_relative '../record/record'
require_relative '../record/recurring_activity'
require_relative '../record/remind_at'
require_relative '../record/reminder'
require_relative '../record/tax'
require_relative '../record/territory'
require_relative '../record/time_range'
require_relative '../users/minified_user'
require_relative '../util/choice'

module ZOHOCRMSDK
  module Record
    class Field

        # Creates an instance of Field with the given parameters
        # @param api_name [String] A String
      def initialize(api_name)
        if api_name!=nil and !api_name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
        end
        @api_name = api_name
      end

        # The method to get the api_name
        # @return A String value

      def api_name
        @api_name
      end

      class Products
          @@Product_category =   Field.new('Product_Category')
        def self.Product_category
          @@Product_category
        end
          @@Qty_in_demand =   Field.new('Qty_in_Demand')
        def self.Qty_in_demand
          @@Qty_in_demand
        end
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Vendor_name =   Field.new('Vendor_Name')
        def self.Vendor_name
          @@Vendor_name
        end
          @@Sales_start_date =   Field.new('Sales_Start_Date')
        def self.Sales_start_date
          @@Sales_start_date
        end
          @@Tax =   Field.new('Tax')
        def self.Tax
          @@Tax
        end
          @@Product_active =   Field.new('Product_Active')
        def self.Product_active
          @@Product_active
        end
          @@Record_image =   Field.new('Record_Image')
        def self.Record_image
          @@Record_image
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Product_code =   Field.new('Product_Code')
        def self.Product_code
          @@Product_code
        end
          @@Manufacturer =   Field.new('Manufacturer')
        def self.Manufacturer
          @@Manufacturer
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Support_expiry_date =   Field.new('Support_Expiry_Date')
        def self.Support_expiry_date
          @@Support_expiry_date
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Commission_rate =   Field.new('Commission_Rate')
        def self.Commission_rate
          @@Commission_rate
        end
          @@Product_name =   Field.new('Product_Name')
        def self.Product_name
          @@Product_name
        end
          @@Handler =   Field.new('Handler')
        def self.Handler
          @@Handler
        end
          @@Support_start_date =   Field.new('Support_Start_Date')
        def self.Support_start_date
          @@Support_start_date
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Usage_unit =   Field.new('Usage_Unit')
        def self.Usage_unit
          @@Usage_unit
        end
          @@Qty_ordered =   Field.new('Qty_Ordered')
        def self.Qty_ordered
          @@Qty_ordered
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Qty_in_stock =   Field.new('Qty_in_Stock')
        def self.Qty_in_stock
          @@Qty_in_stock
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Sales_end_date =   Field.new('Sales_End_Date')
        def self.Sales_end_date
          @@Sales_end_date
        end
          @@Unit_price =   Field.new('Unit_Price')
        def self.Unit_price
          @@Unit_price
        end
          @@Taxable =   Field.new('Taxable')
        def self.Taxable
          @@Taxable
        end
          @@Reorder_level =   Field.new('Reorder_Level')
        def self.Reorder_level
          @@Reorder_level
        end
      end

      class Consents
          @@Contact_through_email =   Field.new('Contact_Through_Email')
        def self.Contact_through_email
          @@Contact_through_email
        end
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Email =   Field.new('Email')
        def self.Email
          @@Email
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Consent_through =   Field.new('Consent_Through')
        def self.Consent_through
          @@Consent_through
        end
          @@Contact_through_survey =   Field.new('Contact_Through_Survey')
        def self.Contact_through_survey
          @@Contact_through_survey
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Data_processing_basis =   Field.new('Data_Processing_Basis')
        def self.Data_processing_basis
          @@Data_processing_basis
        end
          @@Contact_through_phone =   Field.new('Contact_Through_Phone')
        def self.Contact_through_phone
          @@Contact_through_phone
        end
          @@Lawful_reason =   Field.new('Lawful_Reason')
        def self.Lawful_reason
          @@Lawful_reason
        end
          @@Mail_sent_time =   Field.new('Mail_Sent_Time')
        def self.Mail_sent_time
          @@Mail_sent_time
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Consent_date =   Field.new('Consent_Date')
        def self.Consent_date
          @@Consent_date
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Consent_remarks =   Field.new('Consent_Remarks')
        def self.Consent_remarks
          @@Consent_remarks
        end
      end

      class Tasks
          @@Status =   Field.new('Status')
        def self.Status
          @@Status
        end
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Due_date =   Field.new('Due_Date')
        def self.Due_date
          @@Due_date
        end
          @@Priority =   Field.new('Priority')
        def self.Priority
          @@Priority
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Closed_time =   Field.new('Closed_Time')
        def self.Closed_time
          @@Closed_time
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Subject =   Field.new('Subject')
        def self.Subject
          @@Subject
        end
          @@Send_notification_email =   Field.new('Send_Notification_Email')
        def self.Send_notification_email
          @@Send_notification_email
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Recurring_activity =   Field.new('Recurring_Activity')
        def self.Recurring_activity
          @@Recurring_activity
        end
          @@What_id =   Field.new('What_Id')
        def self.What_id
          @@What_id
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Remind_at =   Field.new('Remind_At')
        def self.Remind_at
          @@Remind_at
        end
          @@Who_id =   Field.new('Who_Id')
        def self.Who_id
          @@Who_id
        end
      end

      class Data_Subject_Requests
          @@Request_type =   Field.new('Request_Type')
        def self.Request_type
          @@Request_type
        end
          @@Is_closed =   Field.new('Is_Closed')
        def self.Is_closed
          @@Is_closed
        end
          @@Parent_id =   Field.new('Parent_Id')
        def self.Parent_id
          @@Parent_id
        end
          @@Request_source =   Field.new('Request_Source')
        def self.Request_source
          @@Request_source
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Closed_by =   Field.new('Closed_By')
        def self.Closed_by
          @@Closed_by
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Requested_by =   Field.new('Requested_By')
        def self.Requested_by
          @@Requested_by
        end
          @@Requested_date =   Field.new('Requested_Date')
        def self.Requested_date
          @@Requested_date
        end
          @@Closed_date =   Field.new('Closed_Date')
        def self.Closed_date
          @@Closed_date
        end
      end

      class Vendors
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Email =   Field.new('Email')
        def self.Email
          @@Email
        end
          @@Category =   Field.new('Category')
        def self.Category
          @@Category
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Vendor_name =   Field.new('Vendor_Name')
        def self.Vendor_name
          @@Vendor_name
        end
          @@Website =   Field.new('Website')
        def self.Website
          @@Website
        end
          @@Record_image =   Field.new('Record_Image')
        def self.Record_image
          @@Record_image
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Unsubscribed_mode =   Field.new('Unsubscribed_Mode')
        def self.Unsubscribed_mode
          @@Unsubscribed_mode
        end
          @@Phone =   Field.new('Phone')
        def self.Phone
          @@Phone
        end
          @@Street =   Field.new('Street')
        def self.Street
          @@Street
        end
          @@Zip_code =   Field.new('Zip_Code')
        def self.Zip_code
          @@Zip_code
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Email_opt_out =   Field.new('Email_Opt_Out')
        def self.Email_opt_out
          @@Email_opt_out
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Unsubscribed_time =   Field.new('Unsubscribed_Time')
        def self.Unsubscribed_time
          @@Unsubscribed_time
        end
          @@City =   Field.new('City')
        def self.City
          @@City
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@State =   Field.new('State')
        def self.State
          @@State
        end
          @@GL_account =   Field.new('GL_Account')
        def self.GL_account
          @@GL_account
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Country =   Field.new('Country')
        def self.Country
          @@Country
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
      end

      class Data_Enrichment_Stats__s
          @@Usage_bulk_count__s =   Field.new('Usage_Bulk_Count__s')
        def self.Usage_bulk_count__s
          @@Usage_bulk_count__s
        end
          @@Usage_date__s =   Field.new('Usage_Date__s')
        def self.Usage_date__s
          @@Usage_date__s
        end
          @@Feature_name__s =   Field.new('Feature_Name__s')
        def self.Feature_name__s
          @@Feature_name__s
        end
          @@Module__s =   Field.new('Module__s')
        def self.Module__s
          @@Module__s
        end
          @@Add_on_limit__s =   Field.new('Add_On_Limit__s')
        def self.Add_on_limit__s
          @@Add_on_limit__s
        end
          @@Monthly_limit__s =   Field.new('Monthly_Limit__s')
        def self.Monthly_limit__s
          @@Monthly_limit__s
        end
          @@Usage_count__s =   Field.new('Usage_Count__s')
        def self.Usage_count__s
          @@Usage_count__s
        end
      end

      class Appointments__s
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Address =   Field.new('Address')
        def self.Address
          @@Address
        end
          @@Appointment_start_time =   Field.new('Appointment_Start_Time')
        def self.Appointment_start_time
          @@Appointment_start_time
        end
          @@Cancellation_reason =   Field.new('Cancellation_Reason')
        def self.Cancellation_reason
          @@Cancellation_reason
        end
          @@Appointment_for =   Field.new('Appointment_For')
        def self.Appointment_for
          @@Appointment_for
        end
          @@Rescheduled_to =   Field.new('Rescheduled_To')
        def self.Rescheduled_to
          @@Rescheduled_to
        end
          @@Reschedule_reason =   Field.new('Reschedule_Reason')
        def self.Reschedule_reason
          @@Reschedule_reason
        end
          @@Job_sheet_name__s =   Field.new('Job_Sheet_Name__s')
        def self.Job_sheet_name__s
          @@Job_sheet_name__s
        end
          @@Additional_information =   Field.new('Additional_Information')
        def self.Additional_information
          @@Additional_information
        end
          @@Job_sheet_created__s =   Field.new('Job_Sheet_Created__s')
        def self.Job_sheet_created__s
          @@Job_sheet_created__s
        end
          @@Cancelled_time =   Field.new('Cancelled_Time')
        def self.Cancelled_time
          @@Cancelled_time
        end
          @@Cancellation_note =   Field.new('Cancellation_Note')
        def self.Cancellation_note
          @@Cancellation_note
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Reschedule_count =   Field.new('Reschedule_Count')
        def self.Reschedule_count
          @@Reschedule_count
        end
          @@Rescheduled_by =   Field.new('Rescheduled_By')
        def self.Rescheduled_by
          @@Rescheduled_by
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Rescheduled_time =   Field.new('Rescheduled_Time')
        def self.Rescheduled_time
          @@Rescheduled_time
        end
          @@Remind_at =   Field.new('Remind_At')
        def self.Remind_at
          @@Remind_at
        end
          @@Appointment_end_time =   Field.new('Appointment_End_Time')
        def self.Appointment_end_time
          @@Appointment_end_time
        end
          @@Status =   Field.new('Status')
        def self.Status
          @@Status
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Service_name =   Field.new('Service_Name')
        def self.Service_name
          @@Service_name
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Rescheduled_from =   Field.new('Rescheduled_From')
        def self.Rescheduled_from
          @@Rescheduled_from
        end
          @@Cancelled_by =   Field.new('Cancelled_By')
        def self.Cancelled_by
          @@Cancelled_by
        end
          @@Duration =   Field.new('Duration')
        def self.Duration
          @@Duration
        end
          @@Appointment_name =   Field.new('Appointment_Name')
        def self.Appointment_name
          @@Appointment_name
        end
          @@Job_sheet_section__s =   Field.new('Job_Sheet_Section__s')
        def self.Job_sheet_section__s
          @@Job_sheet_section__s
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Job_sheet_description__s =   Field.new('Job_Sheet_Description__s')
        def self.Job_sheet_description__s
          @@Job_sheet_description__s
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Location =   Field.new('Location')
        def self.Location
          @@Location
        end
          @@Reschedule_note =   Field.new('Reschedule_Note')
        def self.Reschedule_note
          @@Reschedule_note
        end
      end

      class Calls
          @@Call_duration =   Field.new('Call_Duration')
        def self.Call_duration
          @@Call_duration
        end
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Caller_id =   Field.new('Caller_ID')
        def self.Caller_id
          @@Caller_id
        end
          @@CTI_entry =   Field.new('CTI_Entry')
        def self.CTI_entry
          @@CTI_entry
        end
          @@Call_agenda =   Field.new('Call_Agenda')
        def self.Call_agenda
          @@Call_agenda
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Call_purpose =   Field.new('Call_Purpose')
        def self.Call_purpose
          @@Call_purpose
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Who_id =   Field.new('Who_Id')
        def self.Who_id
          @@Who_id
        end
          @@Outgoing_call_status =   Field.new('Outgoing_Call_Status')
        def self.Outgoing_call_status
          @@Outgoing_call_status
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Reminder =   Field.new('Reminder')
        def self.Reminder
          @@Reminder
        end
          @@Voice_recording__s =   Field.new('Voice_Recording__s')
        def self.Voice_recording__s
          @@Voice_recording__s
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Call_start_time =   Field.new('Call_Start_Time')
        def self.Call_start_time
          @@Call_start_time
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Subject =   Field.new('Subject')
        def self.Subject
          @@Subject
        end
          @@Call_type =   Field.new('Call_Type')
        def self.Call_type
          @@Call_type
        end
          @@Scheduled_in_crm =   Field.new('Scheduled_In_CRM')
        def self.Scheduled_in_crm
          @@Scheduled_in_crm
        end
          @@Call_result =   Field.new('Call_Result')
        def self.Call_result
          @@Call_result
        end
          @@What_id =   Field.new('What_Id')
        def self.What_id
          @@What_id
        end
          @@Call_duration_in_seconds =   Field.new('Call_Duration_in_seconds')
        def self.Call_duration_in_seconds
          @@Call_duration_in_seconds
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Dialled_number =   Field.new('Dialled_Number')
        def self.Dialled_number
          @@Dialled_number
        end
      end

      class Leads
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Company =   Field.new('Company')
        def self.Company
          @@Company
        end
          @@Email =   Field.new('Email')
        def self.Email
          @@Email
        end
          @@Visitor_score =   Field.new('Visitor_Score')
        def self.Visitor_score
          @@Visitor_score
        end
          @@Last_activity_time =   Field.new('Last_Activity_Time')
        def self.Last_activity_time
          @@Last_activity_time
        end
          @@Industry =   Field.new('Industry')
        def self.Industry
          @@Industry
        end
          @@Unsubscribed_mode =   Field.new('Unsubscribed_Mode')
        def self.Unsubscribed_mode
          @@Unsubscribed_mode
        end
          @@Exchange_rate =   Field.new('Exchange_Rate')
        def self.Exchange_rate
          @@Exchange_rate
        end
          @@Currency =   Field.new('Currency')
        def self.Currency
          @@Currency
        end
          @@Street =   Field.new('Street')
        def self.Street
          @@Street
        end
          @@Data_processing_basis_details =   Field.new('Data_Processing_Basis_Details')
        def self.Data_processing_basis_details
          @@Data_processing_basis_details
        end
          @@Zip_code =   Field.new('Zip_Code')
        def self.Zip_code
          @@Zip_code
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Data_source =   Field.new('Data_Source')
        def self.Data_source
          @@Data_source
        end
          @@Enrich_status__s =   Field.new('Enrich_Status__s')
        def self.Enrich_status__s
          @@Enrich_status__s
        end
          @@First_visited_url =   Field.new('First_Visited_URL')
        def self.First_visited_url
          @@First_visited_url
        end
          @@Days_visited =   Field.new('Days_Visited')
        def self.Days_visited
          @@Days_visited
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Change_log_time__s =   Field.new('Change_Log_Time__s')
        def self.Change_log_time__s
          @@Change_log_time__s
        end
          @@City =   Field.new('City')
        def self.City
          @@City
        end
          @@No_of_employees =   Field.new('No_of_Employees')
        def self.No_of_employees
          @@No_of_employees
        end
          @@Data_processing_basis =   Field.new('Data_Processing_Basis')
        def self.Data_processing_basis
          @@Data_processing_basis
        end
          @@Converted__s =   Field.new('Converted__s')
        def self.Converted__s
          @@Converted__s
        end
          @@Converted_date_time =   Field.new('Converted_Date_Time')
        def self.Converted_date_time
          @@Converted_date_time
        end
          @@Converted_account =   Field.new('Converted_Account')
        def self.Converted_account
          @@Converted_account
        end
          @@State =   Field.new('State')
        def self.State
          @@State
        end
          @@Country =   Field.new('Country')
        def self.Country
          @@Country
        end
          @@Last_visited_time =   Field.new('Last_Visited_Time')
        def self.Last_visited_time
          @@Last_visited_time
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Annual_revenue =   Field.new('Annual_Revenue')
        def self.Annual_revenue
          @@Annual_revenue
        end
          @@Secondary_email =   Field.new('Secondary_Email')
        def self.Secondary_email
          @@Secondary_email
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Number_of_chats =   Field.new('Number_Of_Chats')
        def self.Number_of_chats
          @@Number_of_chats
        end
          @@Rating =   Field.new('Rating')
        def self.Rating
          @@Rating
        end
          @@Website =   Field.new('Website')
        def self.Website
          @@Website
        end
          @@Twitter =   Field.new('Twitter')
        def self.Twitter
          @@Twitter
        end
          @@Average_time_spent_minutes =   Field.new('Average_Time_Spent_Minutes')
        def self.Average_time_spent_minutes
          @@Average_time_spent_minutes
        end
          @@Salutation =   Field.new('Salutation')
        def self.Salutation
          @@Salutation
        end
          @@First_name =   Field.new('First_Name')
        def self.First_name
          @@First_name
        end
          @@Full_name =   Field.new('Full_Name')
        def self.Full_name
          @@Full_name
        end
          @@Lead_status =   Field.new('Lead_Status')
        def self.Lead_status
          @@Lead_status
        end
          @@Record_image =   Field.new('Record_Image')
        def self.Record_image
          @@Record_image
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Converted_deal =   Field.new('Converted_Deal')
        def self.Converted_deal
          @@Converted_deal
        end
          @@Lead_conversion_time =   Field.new('Lead_Conversion_Time')
        def self.Lead_conversion_time
          @@Lead_conversion_time
        end
          @@Skype_id =   Field.new('Skype_ID')
        def self.Skype_id
          @@Skype_id
        end
          @@Phone =   Field.new('Phone')
        def self.Phone
          @@Phone
        end
          @@Email_opt_out =   Field.new('Email_Opt_Out')
        def self.Email_opt_out
          @@Email_opt_out
        end
          @@Designation =   Field.new('Designation')
        def self.Designation
          @@Designation
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Unsubscribed_time =   Field.new('Unsubscribed_Time')
        def self.Unsubscribed_time
          @@Unsubscribed_time
        end
          @@Converted_contact =   Field.new('Converted_Contact')
        def self.Converted_contact
          @@Converted_contact
        end
          @@Mobile =   Field.new('Mobile')
        def self.Mobile
          @@Mobile
        end
          @@Territories =   Field.new('Territories')
        def self.Territories
          @@Territories
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@First_visited_time =   Field.new('First_Visited_Time')
        def self.First_visited_time
          @@First_visited_time
        end
          @@Last_name =   Field.new('Last_Name')
        def self.Last_name
          @@Last_name
        end
          @@Layout =   Field.new('Layout')
        def self.Layout
          @@Layout
        end
          @@Referrer =   Field.new('Referrer')
        def self.Referrer
          @@Referrer
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Lead_source =   Field.new('Lead_Source')
        def self.Lead_source
          @@Lead_source
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Fax =   Field.new('Fax')
        def self.Fax
          @@Fax
        end
          @@Last_enriched_time__s =   Field.new('Last_Enriched_Time__s')
        def self.Last_enriched_time__s
          @@Last_enriched_time__s
        end
      end

      class Deals
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Campaign_source =   Field.new('Campaign_Source')
        def self.Campaign_source
          @@Campaign_source
        end
          @@Closing_date =   Field.new('Closing_Date')
        def self.Closing_date
          @@Closing_date
        end
          @@Reason_for_loss__s =   Field.new('Reason_For_Loss__s')
        def self.Reason_for_loss__s
          @@Reason_for_loss__s
        end
          @@Last_activity_time =   Field.new('Last_Activity_Time')
        def self.Last_activity_time
          @@Last_activity_time
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Lead_conversion_time =   Field.new('Lead_Conversion_Time')
        def self.Lead_conversion_time
          @@Lead_conversion_time
        end
          @@Deal_name =   Field.new('Deal_Name')
        def self.Deal_name
          @@Deal_name
        end
          @@Exchange_rate =   Field.new('Exchange_Rate')
        def self.Exchange_rate
          @@Exchange_rate
        end
          @@Expected_revenue =   Field.new('Expected_Revenue')
        def self.Expected_revenue
          @@Expected_revenue
        end
          @@Currency =   Field.new('Currency')
        def self.Currency
          @@Currency
        end
          @@Overall_sales_duration =   Field.new('Overall_Sales_Duration')
        def self.Overall_sales_duration
          @@Overall_sales_duration
        end
          @@Stage =   Field.new('Stage')
        def self.Stage
          @@Stage
        end
          @@Account_name =   Field.new('Account_Name')
        def self.Account_name
          @@Account_name
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Territory =   Field.new('Territory')
        def self.Territory
          @@Territory
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Amount =   Field.new('Amount')
        def self.Amount
          @@Amount
        end
          @@Probability =   Field.new('Probability')
        def self.Probability
          @@Probability
        end
          @@Next_step =   Field.new('Next_Step')
        def self.Next_step
          @@Next_step
        end
          @@Change_log_time__s =   Field.new('Change_Log_Time__s')
        def self.Change_log_time__s
          @@Change_log_time__s
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Pipeline =   Field.new('Pipeline')
        def self.Pipeline
          @@Pipeline
        end
          @@Contact_name =   Field.new('Contact_Name')
        def self.Contact_name
          @@Contact_name
        end
          @@Sales_cycle_duration =   Field.new('Sales_Cycle_Duration')
        def self.Sales_cycle_duration
          @@Sales_cycle_duration
        end
          @@Type =   Field.new('Type')
        def self.Type
          @@Type
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Lead_source =   Field.new('Lead_Source')
        def self.Lead_source
          @@Lead_source
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
      end

      class Quotes
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Discount =   Field.new('Discount')
        def self.Discount
          @@Discount
        end
          @@Shipping_state =   Field.new('Shipping_State')
        def self.Shipping_state
          @@Shipping_state
        end
          @@Tax =   Field.new('Tax')
        def self.Tax
          @@Tax
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Deal_name =   Field.new('Deal_Name')
        def self.Deal_name
          @@Deal_name
        end
          @@Exchange_rate =   Field.new('Exchange_Rate')
        def self.Exchange_rate
          @@Exchange_rate
        end
          @@Valid_till =   Field.new('Valid_Till')
        def self.Valid_till
          @@Valid_till
        end
          @@Currency =   Field.new('Currency')
        def self.Currency
          @@Currency
        end
          @@Billing_country =   Field.new('Billing_Country')
        def self.Billing_country
          @@Billing_country
        end
          @@Team =   Field.new('Team')
        def self.Team
          @@Team
        end
          @@Account_name =   Field.new('Account_Name')
        def self.Account_name
          @@Account_name
        end
          @@Carrier =   Field.new('Carrier')
        def self.Carrier
          @@Carrier
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Quoted_items =   Field.new('Quoted_Items')
        def self.Quoted_items
          @@Quoted_items
        end
          @@Quote_stage =   Field.new('Quote_Stage')
        def self.Quote_stage
          @@Quote_stage
        end
          @@Grand_total =   Field.new('Grand_Total')
        def self.Grand_total
          @@Grand_total
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Billing_street =   Field.new('Billing_Street')
        def self.Billing_street
          @@Billing_street
        end
          @@Adjustment =   Field.new('Adjustment')
        def self.Adjustment
          @@Adjustment
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Terms_and_conditions =   Field.new('Terms_and_Conditions')
        def self.Terms_and_conditions
          @@Terms_and_conditions
        end
          @@Sub_total =   Field.new('Sub_Total')
        def self.Sub_total
          @@Sub_total
        end
          @@Billing_code =   Field.new('Billing_Code')
        def self.Billing_code
          @@Billing_code
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Subject =   Field.new('Subject')
        def self.Subject
          @@Subject
        end
          @@Contact_name =   Field.new('Contact_Name')
        def self.Contact_name
          @@Contact_name
        end
          @@Shipping_city =   Field.new('Shipping_City')
        def self.Shipping_city
          @@Shipping_city
        end
          @@Shipping_country =   Field.new('Shipping_Country')
        def self.Shipping_country
          @@Shipping_country
        end
          @@Shipping_code =   Field.new('Shipping_Code')
        def self.Shipping_code
          @@Shipping_code
        end
          @@Billing_city =   Field.new('Billing_City')
        def self.Billing_city
          @@Billing_city
        end
          @@Quote_number =   Field.new('Quote_Number')
        def self.Quote_number
          @@Quote_number
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Billing_state =   Field.new('Billing_State')
        def self.Billing_state
          @@Billing_state
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Shipping_street =   Field.new('Shipping_Street')
        def self.Shipping_street
          @@Shipping_street
        end
      end

      class Invoices
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Discount =   Field.new('Discount')
        def self.Discount
          @@Discount
        end
          @@Shipping_state =   Field.new('Shipping_State')
        def self.Shipping_state
          @@Shipping_state
        end
          @@Tax =   Field.new('Tax')
        def self.Tax
          @@Tax
        end
          @@Invoice_date =   Field.new('Invoice_Date')
        def self.Invoice_date
          @@Invoice_date
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Invoiced_items =   Field.new('Invoiced_Items')
        def self.Invoiced_items
          @@Invoiced_items
        end
          @@Exchange_rate =   Field.new('Exchange_Rate')
        def self.Exchange_rate
          @@Exchange_rate
        end
          @@Currency =   Field.new('Currency')
        def self.Currency
          @@Currency
        end
          @@Billing_country =   Field.new('Billing_Country')
        def self.Billing_country
          @@Billing_country
        end
          @@Account_name =   Field.new('Account_Name')
        def self.Account_name
          @@Account_name
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Sales_order =   Field.new('Sales_Order')
        def self.Sales_order
          @@Sales_order
        end
          @@Status =   Field.new('Status')
        def self.Status
          @@Status
        end
          @@Sales_commission =   Field.new('Sales_Commission')
        def self.Sales_commission
          @@Sales_commission
        end
          @@Grand_total =   Field.new('Grand_Total')
        def self.Grand_total
          @@Grand_total
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Due_date =   Field.new('Due_Date')
        def self.Due_date
          @@Due_date
        end
          @@Billing_street =   Field.new('Billing_Street')
        def self.Billing_street
          @@Billing_street
        end
          @@Adjustment =   Field.new('Adjustment')
        def self.Adjustment
          @@Adjustment
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Terms_and_conditions =   Field.new('Terms_and_Conditions')
        def self.Terms_and_conditions
          @@Terms_and_conditions
        end
          @@Sub_total =   Field.new('Sub_Total')
        def self.Sub_total
          @@Sub_total
        end
          @@Invoice_number =   Field.new('Invoice_Number')
        def self.Invoice_number
          @@Invoice_number
        end
          @@Billing_code =   Field.new('Billing_Code')
        def self.Billing_code
          @@Billing_code
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Subject =   Field.new('Subject')
        def self.Subject
          @@Subject
        end
          @@Excise_duty =   Field.new('Excise_Duty')
        def self.Excise_duty
          @@Excise_duty
        end
          @@Contact_name =   Field.new('Contact_Name')
        def self.Contact_name
          @@Contact_name
        end
          @@Shipping_city =   Field.new('Shipping_City')
        def self.Shipping_city
          @@Shipping_city
        end
          @@Shipping_country =   Field.new('Shipping_Country')
        def self.Shipping_country
          @@Shipping_country
        end
          @@Shipping_code =   Field.new('Shipping_Code')
        def self.Shipping_code
          @@Shipping_code
        end
          @@Billing_city =   Field.new('Billing_City')
        def self.Billing_city
          @@Billing_city
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Purchase_order =   Field.new('Purchase_Order')
        def self.Purchase_order
          @@Purchase_order
        end
          @@Billing_state =   Field.new('Billing_State')
        def self.Billing_state
          @@Billing_state
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Shipping_street =   Field.new('Shipping_Street')
        def self.Shipping_street
          @@Shipping_street
        end
      end

      class Campaigns
          @@Status =   Field.new('Status')
        def self.Status
          @@Status
        end
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Campaign_name =   Field.new('Campaign_Name')
        def self.Campaign_name
          @@Campaign_name
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@End_date =   Field.new('End_Date')
        def self.End_date
          @@End_date
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Type =   Field.new('Type')
        def self.Type
          @@Type
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Num_sent =   Field.new('Num_sent')
        def self.Num_sent
          @@Num_sent
        end
          @@Exchange_rate =   Field.new('Exchange_Rate')
        def self.Exchange_rate
          @@Exchange_rate
        end
          @@Expected_revenue =   Field.new('Expected_Revenue')
        def self.Expected_revenue
          @@Expected_revenue
        end
          @@Currency =   Field.new('Currency')
        def self.Currency
          @@Currency
        end
          @@Actual_cost =   Field.new('Actual_Cost')
        def self.Actual_cost
          @@Actual_cost
        end
          @@Expected_response =   Field.new('Expected_Response')
        def self.Expected_response
          @@Expected_response
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Parent_campaign =   Field.new('Parent_Campaign')
        def self.Parent_campaign
          @@Parent_campaign
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Start_date =   Field.new('Start_Date')
        def self.Start_date
          @@Start_date
        end
          @@Budgeted_cost =   Field.new('Budgeted_Cost')
        def self.Budgeted_cost
          @@Budgeted_cost
        end
      end

      class Attachments
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@File_name =   Field.new('File_Name')
        def self.File_name
          @@File_name
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Size =   Field.new('Size')
        def self.Size
          @@Size
        end
          @@Parent_id =   Field.new('Parent_Id')
        def self.Parent_id
          @@Parent_id
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
      end

      class Price_Books
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Pricing_details =   Field.new('Pricing_Details')
        def self.Pricing_details
          @@Pricing_details
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Active =   Field.new('Active')
        def self.Active
          @@Active
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Pricing_model =   Field.new('Pricing_Model')
        def self.Pricing_model
          @@Pricing_model
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Price_book_name =   Field.new('Price_Book_Name')
        def self.Price_book_name
          @@Price_book_name
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
      end

      class Sales_Orders
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Discount =   Field.new('Discount')
        def self.Discount
          @@Discount
        end
          @@Customer_no =   Field.new('Customer_No')
        def self.Customer_no
          @@Customer_no
        end
          @@Shipping_state =   Field.new('Shipping_State')
        def self.Shipping_state
          @@Shipping_state
        end
          @@Tax =   Field.new('Tax')
        def self.Tax
          @@Tax
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Deal_name =   Field.new('Deal_Name')
        def self.Deal_name
          @@Deal_name
        end
          @@Exchange_rate =   Field.new('Exchange_Rate')
        def self.Exchange_rate
          @@Exchange_rate
        end
          @@Currency =   Field.new('Currency')
        def self.Currency
          @@Currency
        end
          @@Billing_country =   Field.new('Billing_Country')
        def self.Billing_country
          @@Billing_country
        end
          @@Account_name =   Field.new('Account_Name')
        def self.Account_name
          @@Account_name
        end
          @@Carrier =   Field.new('Carrier')
        def self.Carrier
          @@Carrier
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Ordered_items =   Field.new('Ordered_Items')
        def self.Ordered_items
          @@Ordered_items
        end
          @@Quote_name =   Field.new('Quote_Name')
        def self.Quote_name
          @@Quote_name
        end
          @@Status =   Field.new('Status')
        def self.Status
          @@Status
        end
          @@Sales_commission =   Field.new('Sales_Commission')
        def self.Sales_commission
          @@Sales_commission
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Due_date =   Field.new('Due_Date')
        def self.Due_date
          @@Due_date
        end
          @@Billing_street =   Field.new('Billing_Street')
        def self.Billing_street
          @@Billing_street
        end
          @@Adjustment =   Field.new('Adjustment')
        def self.Adjustment
          @@Adjustment
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Terms_and_conditions =   Field.new('Terms_and_Conditions')
        def self.Terms_and_conditions
          @@Terms_and_conditions
        end
          @@Sub_total =   Field.new('Sub_Total')
        def self.Sub_total
          @@Sub_total
        end
          @@Billing_code =   Field.new('Billing_Code')
        def self.Billing_code
          @@Billing_code
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Subject =   Field.new('Subject')
        def self.Subject
          @@Subject
        end
          @@Contact_name =   Field.new('Contact_Name')
        def self.Contact_name
          @@Contact_name
        end
          @@Excise_duty =   Field.new('Excise_Duty')
        def self.Excise_duty
          @@Excise_duty
        end
          @@Shipping_city =   Field.new('Shipping_City')
        def self.Shipping_city
          @@Shipping_city
        end
          @@Shipping_country =   Field.new('Shipping_Country')
        def self.Shipping_country
          @@Shipping_country
        end
          @@Shipping_code =   Field.new('Shipping_Code')
        def self.Shipping_code
          @@Shipping_code
        end
          @@Billing_city =   Field.new('Billing_City')
        def self.Billing_city
          @@Billing_city
        end
          @@SO_number =   Field.new('SO_Number')
        def self.SO_number
          @@SO_number
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Purchase_order =   Field.new('Purchase_Order')
        def self.Purchase_order
          @@Purchase_order
        end
          @@Billing_state =   Field.new('Billing_State')
        def self.Billing_state
          @@Billing_state
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Pending =   Field.new('Pending')
        def self.Pending
          @@Pending
        end
          @@Shipping_street =   Field.new('Shipping_Street')
        def self.Shipping_street
          @@Shipping_street
        end
      end

      class Services__s
          @@Job_sheet_required =   Field.new('Job_Sheet_Required')
        def self.Job_sheet_required
          @@Job_sheet_required
        end
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Available_days =   Field.new('Available_Days')
        def self.Available_days
          @@Available_days
        end
          @@Tax =   Field.new('Tax')
        def self.Tax
          @@Tax
        end
          @@Unavailable_from =   Field.new('Unavailable_From')
        def self.Unavailable_from
          @@Unavailable_from
        end
          @@Record_image =   Field.new('Record_Image')
        def self.Record_image
          @@Record_image
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Available_dates =   Field.new('Available_Dates')
        def self.Available_dates
          @@Available_dates
        end
          @@Status =   Field.new('Status')
        def self.Status
          @@Status
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Available_timings =   Field.new('Available_Timings')
        def self.Available_timings
          @@Available_timings
        end
          @@Service_name =   Field.new('Service_Name')
        def self.Service_name
          @@Service_name
        end
          @@Available_from =   Field.new('Available_From')
        def self.Available_from
          @@Available_from
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Available_till =   Field.new('Available_Till')
        def self.Available_till
          @@Available_till
        end
          @@Duration =   Field.new('Duration')
        def self.Duration
          @@Duration
        end
          @@Job_sheet_section__s =   Field.new('Job_Sheet_Section__s')
        def self.Job_sheet_section__s
          @@Job_sheet_section__s
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Price =   Field.new('Price')
        def self.Price
          @@Price
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Availability_type =   Field.new('Availability_Type')
        def self.Availability_type
          @@Availability_type
        end
          @@Members =   Field.new('Members')
        def self.Members
          @@Members
        end
          @@Location =   Field.new('Location')
        def self.Location
          @@Location
        end
          @@Unavailable_till =   Field.new('Unavailable_Till')
        def self.Unavailable_till
          @@Unavailable_till
        end
      end

      class Contacts
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Email =   Field.new('Email')
        def self.Email
          @@Email
        end
          @@Visitor_score =   Field.new('Visitor_Score')
        def self.Visitor_score
          @@Visitor_score
        end
          @@Other_phone =   Field.new('Other_Phone')
        def self.Other_phone
          @@Other_phone
        end
          @@Mailing_state =   Field.new('Mailing_State')
        def self.Mailing_state
          @@Mailing_state
        end
          @@Other_state =   Field.new('Other_State')
        def self.Other_state
          @@Other_state
        end
          @@Other_country =   Field.new('Other_Country')
        def self.Other_country
          @@Other_country
        end
          @@Last_activity_time =   Field.new('Last_Activity_Time')
        def self.Last_activity_time
          @@Last_activity_time
        end
          @@Department =   Field.new('Department')
        def self.Department
          @@Department
        end
          @@Unsubscribed_mode =   Field.new('Unsubscribed_Mode')
        def self.Unsubscribed_mode
          @@Unsubscribed_mode
        end
          @@Assistant =   Field.new('Assistant')
        def self.Assistant
          @@Assistant
        end
          @@Mailing_country =   Field.new('Mailing_Country')
        def self.Mailing_country
          @@Mailing_country
        end
          @@Data_processing_basis_details =   Field.new('Data_Processing_Basis_Details')
        def self.Data_processing_basis_details
          @@Data_processing_basis_details
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Data_source =   Field.new('Data_Source')
        def self.Data_source
          @@Data_source
        end
          @@Reporting_to =   Field.new('Reporting_To')
        def self.Reporting_to
          @@Reporting_to
        end
          @@Enrich_status__s =   Field.new('Enrich_Status__s')
        def self.Enrich_status__s
          @@Enrich_status__s
        end
          @@First_visited_url =   Field.new('First_Visited_URL')
        def self.First_visited_url
          @@First_visited_url
        end
          @@Days_visited =   Field.new('Days_Visited')
        def self.Days_visited
          @@Days_visited
        end
          @@Other_city =   Field.new('Other_City')
        def self.Other_city
          @@Other_city
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Change_log_time__s =   Field.new('Change_Log_Time__s')
        def self.Change_log_time__s
          @@Change_log_time__s
        end
          @@Data_processing_basis =   Field.new('Data_Processing_Basis')
        def self.Data_processing_basis
          @@Data_processing_basis
        end
          @@Home_phone =   Field.new('Home_Phone')
        def self.Home_phone
          @@Home_phone
        end
          @@Last_visited_time =   Field.new('Last_Visited_Time')
        def self.Last_visited_time
          @@Last_visited_time
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Secondary_email =   Field.new('Secondary_Email')
        def self.Secondary_email
          @@Secondary_email
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Vendor_name =   Field.new('Vendor_Name')
        def self.Vendor_name
          @@Vendor_name
        end
          @@Mailing_zip =   Field.new('Mailing_Zip')
        def self.Mailing_zip
          @@Mailing_zip
        end
          @@Reports_to =   Field.new('Reports_To')
        def self.Reports_to
          @@Reports_to
        end
          @@Number_of_chats =   Field.new('Number_Of_Chats')
        def self.Number_of_chats
          @@Number_of_chats
        end
          @@Twitter =   Field.new('Twitter')
        def self.Twitter
          @@Twitter
        end
          @@Other_zip =   Field.new('Other_Zip')
        def self.Other_zip
          @@Other_zip
        end
          @@Mailing_street =   Field.new('Mailing_Street')
        def self.Mailing_street
          @@Mailing_street
        end
          @@Average_time_spent_minutes =   Field.new('Average_Time_Spent_Minutes')
        def self.Average_time_spent_minutes
          @@Average_time_spent_minutes
        end
          @@Salutation =   Field.new('Salutation')
        def self.Salutation
          @@Salutation
        end
          @@First_name =   Field.new('First_Name')
        def self.First_name
          @@First_name
        end
          @@Full_name =   Field.new('Full_Name')
        def self.Full_name
          @@Full_name
        end
          @@Asst_phone =   Field.new('Asst_Phone')
        def self.Asst_phone
          @@Asst_phone
        end
          @@Record_image =   Field.new('Record_Image')
        def self.Record_image
          @@Record_image
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Skype_id =   Field.new('Skype_ID')
        def self.Skype_id
          @@Skype_id
        end
          @@Phone =   Field.new('Phone')
        def self.Phone
          @@Phone
        end
          @@Account_name =   Field.new('Account_Name')
        def self.Account_name
          @@Account_name
        end
          @@Email_opt_out =   Field.new('Email_Opt_Out')
        def self.Email_opt_out
          @@Email_opt_out
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Date_of_birth =   Field.new('Date_of_Birth')
        def self.Date_of_birth
          @@Date_of_birth
        end
          @@Mailing_city =   Field.new('Mailing_City')
        def self.Mailing_city
          @@Mailing_city
        end
          @@Unsubscribed_time =   Field.new('Unsubscribed_Time')
        def self.Unsubscribed_time
          @@Unsubscribed_time
        end
          @@Title =   Field.new('Title')
        def self.Title
          @@Title
        end
          @@Other_street =   Field.new('Other_Street')
        def self.Other_street
          @@Other_street
        end
          @@Mobile =   Field.new('Mobile')
        def self.Mobile
          @@Mobile
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Territories =   Field.new('Territories')
        def self.Territories
          @@Territories
        end
          @@First_visited_time =   Field.new('First_Visited_Time')
        def self.First_visited_time
          @@First_visited_time
        end
          @@Last_name =   Field.new('Last_Name')
        def self.Last_name
          @@Last_name
        end
          @@Referrer =   Field.new('Referrer')
        def self.Referrer
          @@Referrer
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Lead_source =   Field.new('Lead_Source')
        def self.Lead_source
          @@Lead_source
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Fax =   Field.new('Fax')
        def self.Fax
          @@Fax
        end
          @@Last_enriched_time__s =   Field.new('Last_Enriched_Time__s')
        def self.Last_enriched_time__s
          @@Last_enriched_time__s
        end
      end

      class Solutions
          @@Status =   Field.new('Status')
        def self.Status
          @@Status
        end
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Comments =   Field.new('Comments')
        def self.Comments
          @@Comments
        end
          @@No_of_comments =   Field.new('No_of_comments')
        def self.No_of_comments
          @@No_of_comments
        end
          @@Product_name =   Field.new('Product_Name')
        def self.Product_name
          @@Product_name
        end
          @@Add_comment =   Field.new('Add_Comment')
        def self.Add_comment
          @@Add_comment
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Solution_number =   Field.new('Solution_Number')
        def self.Solution_number
          @@Solution_number
        end
          @@Answer =   Field.new('Answer')
        def self.Answer
          @@Answer
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Solution_title =   Field.new('Solution_Title')
        def self.Solution_title
          @@Solution_title
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Published =   Field.new('Published')
        def self.Published
          @@Published
        end
          @@Question =   Field.new('Question')
        def self.Question
          @@Question
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
      end

      class Events
          @@All_day =   Field.new('All_day')
        def self.All_day
          @@All_day
        end
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Check_in_state =   Field.new('Check_In_State')
        def self.Check_in_state
          @@Check_in_state
        end
          @@Check_in_address =   Field.new('Check_In_Address')
        def self.Check_in_address
          @@Check_in_address
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Remind_participants =   Field.new('Remind_Participants')
        def self.Remind_participants
          @@Remind_participants
        end
          @@Start_datetime =   Field.new('Start_DateTime')
        def self.Start_datetime
          @@Start_datetime
        end
          @@Latitude =   Field.new('Latitude')
        def self.Latitude
          @@Latitude
        end
          @@Participants =   Field.new('Participants')
        def self.Participants
          @@Participants
        end
          @@Event_title =   Field.new('Event_Title')
        def self.Event_title
          @@Event_title
        end
          @@End_datetime =   Field.new('End_DateTime')
        def self.End_datetime
          @@End_datetime
        end
          @@Check_in_by =   Field.new('Check_In_By')
        def self.Check_in_by
          @@Check_in_by
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Check_in_city =   Field.new('Check_In_City')
        def self.Check_in_city
          @@Check_in_city
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Check_in_comment =   Field.new('Check_In_Comment')
        def self.Check_in_comment
          @@Check_in_comment
        end
          @@Remind_at =   Field.new('Remind_At')
        def self.Remind_at
          @@Remind_at
        end
          @@Who_id =   Field.new('Who_Id')
        def self.Who_id
          @@Who_id
        end
          @@Check_in_status =   Field.new('Check_In_Status')
        def self.Check_in_status
          @@Check_in_status
        end
          @@Check_in_country =   Field.new('Check_In_Country')
        def self.Check_in_country
          @@Check_in_country
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Venue =   Field.new('Venue')
        def self.Venue
          @@Venue
        end
          @@ZIP_code =   Field.new('ZIP_Code')
        def self.ZIP_code
          @@ZIP_code
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Longitude =   Field.new('Longitude')
        def self.Longitude
          @@Longitude
        end
          @@Check_in_time =   Field.new('Check_In_Time')
        def self.Check_in_time
          @@Check_in_time
        end
          @@Recurring_activity =   Field.new('Recurring_Activity')
        def self.Recurring_activity
          @@Recurring_activity
        end
          @@What_id =   Field.new('What_Id')
        def self.What_id
          @@What_id
        end
          @@Check_in_sub_locality =   Field.new('Check_In_Sub_Locality')
        def self.Check_in_sub_locality
          @@Check_in_sub_locality
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
      end

      class Purchase_Orders
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Discount =   Field.new('Discount')
        def self.Discount
          @@Discount
        end
          @@Vendor_name =   Field.new('Vendor_Name')
        def self.Vendor_name
          @@Vendor_name
        end
          @@Shipping_state =   Field.new('Shipping_State')
        def self.Shipping_state
          @@Shipping_state
        end
          @@Tax =   Field.new('Tax')
        def self.Tax
          @@Tax
        end
          @@PO_date =   Field.new('PO_Date')
        def self.PO_date
          @@PO_date
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Exchange_rate =   Field.new('Exchange_Rate')
        def self.Exchange_rate
          @@Exchange_rate
        end
          @@Currency =   Field.new('Currency')
        def self.Currency
          @@Currency
        end
          @@Billing_country =   Field.new('Billing_Country')
        def self.Billing_country
          @@Billing_country
        end
          @@Purchase_items =   Field.new('Purchase_Items')
        def self.Purchase_items
          @@Purchase_items
        end
          @@Carrier =   Field.new('Carrier')
        def self.Carrier
          @@Carrier
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Status =   Field.new('Status')
        def self.Status
          @@Status
        end
          @@Sales_commission =   Field.new('Sales_Commission')
        def self.Sales_commission
          @@Sales_commission
        end
          @@Grand_total =   Field.new('Grand_Total')
        def self.Grand_total
          @@Grand_total
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@PO_number =   Field.new('PO_Number')
        def self.PO_number
          @@PO_number
        end
          @@Due_date =   Field.new('Due_Date')
        def self.Due_date
          @@Due_date
        end
          @@Billing_street =   Field.new('Billing_Street')
        def self.Billing_street
          @@Billing_street
        end
          @@Adjustment =   Field.new('Adjustment')
        def self.Adjustment
          @@Adjustment
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Terms_and_conditions =   Field.new('Terms_and_Conditions')
        def self.Terms_and_conditions
          @@Terms_and_conditions
        end
          @@Sub_total =   Field.new('Sub_Total')
        def self.Sub_total
          @@Sub_total
        end
          @@Billing_code =   Field.new('Billing_Code')
        def self.Billing_code
          @@Billing_code
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Subject =   Field.new('Subject')
        def self.Subject
          @@Subject
        end
          @@Tracking_number =   Field.new('Tracking_Number')
        def self.Tracking_number
          @@Tracking_number
        end
          @@Contact_name =   Field.new('Contact_Name')
        def self.Contact_name
          @@Contact_name
        end
          @@Excise_duty =   Field.new('Excise_Duty')
        def self.Excise_duty
          @@Excise_duty
        end
          @@Shipping_city =   Field.new('Shipping_City')
        def self.Shipping_city
          @@Shipping_city
        end
          @@Shipping_country =   Field.new('Shipping_Country')
        def self.Shipping_country
          @@Shipping_country
        end
          @@Shipping_code =   Field.new('Shipping_Code')
        def self.Shipping_code
          @@Shipping_code
        end
          @@Billing_city =   Field.new('Billing_City')
        def self.Billing_city
          @@Billing_city
        end
          @@Requisition_no =   Field.new('Requisition_No')
        def self.Requisition_no
          @@Requisition_no
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Billing_state =   Field.new('Billing_State')
        def self.Billing_state
          @@Billing_state
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Shipping_street =   Field.new('Shipping_Street')
        def self.Shipping_street
          @@Shipping_street
        end
      end

      class Accounts
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Ownership =   Field.new('Ownership')
        def self.Ownership
          @@Ownership
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Account_type =   Field.new('Account_Type')
        def self.Account_type
          @@Account_type
        end
          @@Rating =   Field.new('Rating')
        def self.Rating
          @@Rating
        end
          @@SIC_code =   Field.new('SIC_Code')
        def self.SIC_code
          @@SIC_code
        end
          @@Shipping_state =   Field.new('Shipping_State')
        def self.Shipping_state
          @@Shipping_state
        end
          @@Website =   Field.new('Website')
        def self.Website
          @@Website
        end
          @@Employees =   Field.new('Employees')
        def self.Employees
          @@Employees
        end
          @@Last_activity_time =   Field.new('Last_Activity_Time')
        def self.Last_activity_time
          @@Last_activity_time
        end
          @@Industry =   Field.new('Industry')
        def self.Industry
          @@Industry
        end
          @@Record_image =   Field.new('Record_Image')
        def self.Record_image
          @@Record_image
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Account_site =   Field.new('Account_Site')
        def self.Account_site
          @@Account_site
        end
          @@Exchange_rate =   Field.new('Exchange_Rate')
        def self.Exchange_rate
          @@Exchange_rate
        end
          @@Phone =   Field.new('Phone')
        def self.Phone
          @@Phone
        end
          @@Currency =   Field.new('Currency')
        def self.Currency
          @@Currency
        end
          @@Billing_country =   Field.new('Billing_Country')
        def self.Billing_country
          @@Billing_country
        end
          @@Account_name =   Field.new('Account_Name')
        def self.Account_name
          @@Account_name
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Account_number =   Field.new('Account_Number')
        def self.Account_number
          @@Account_number
        end
          @@Ticker_symbol =   Field.new('Ticker_Symbol')
        def self.Ticker_symbol
          @@Ticker_symbol
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Enrich_status__s =   Field.new('Enrich_Status__s')
        def self.Enrich_status__s
          @@Enrich_status__s
        end
          @@Billing_street =   Field.new('Billing_Street')
        def self.Billing_street
          @@Billing_street
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Change_log_time__s =   Field.new('Change_Log_Time__s')
        def self.Change_log_time__s
          @@Change_log_time__s
        end
          @@Billing_code =   Field.new('Billing_Code')
        def self.Billing_code
          @@Billing_code
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Territories =   Field.new('Territories')
        def self.Territories
          @@Territories
        end
          @@Parent_account =   Field.new('Parent_Account')
        def self.Parent_account
          @@Parent_account
        end
          @@Shipping_city =   Field.new('Shipping_City')
        def self.Shipping_city
          @@Shipping_city
        end
          @@Shipping_country =   Field.new('Shipping_Country')
        def self.Shipping_country
          @@Shipping_country
        end
          @@Shipping_code =   Field.new('Shipping_Code')
        def self.Shipping_code
          @@Shipping_code
        end
          @@Billing_city =   Field.new('Billing_City')
        def self.Billing_city
          @@Billing_city
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Billing_state =   Field.new('Billing_State')
        def self.Billing_state
          @@Billing_state
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Fax =   Field.new('Fax')
        def self.Fax
          @@Fax
        end
          @@Annual_revenue =   Field.new('Annual_Revenue')
        def self.Annual_revenue
          @@Annual_revenue
        end
          @@Last_enriched_time__s =   Field.new('Last_Enriched_Time__s')
        def self.Last_enriched_time__s
          @@Last_enriched_time__s
        end
          @@Shipping_street =   Field.new('Shipping_Street')
        def self.Shipping_street
          @@Shipping_street
        end
      end

      class Cases
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Email =   Field.new('Email')
        def self.Email
          @@Email
        end
          @@Description =   Field.new('Description')
        def self.Description
          @@Description
        end
          @@Internal_comments =   Field.new('Internal_Comments')
        def self.Internal_comments
          @@Internal_comments
        end
          @@No_of_comments =   Field.new('No_of_comments')
        def self.No_of_comments
          @@No_of_comments
        end
          @@Reported_by =   Field.new('Reported_By')
        def self.Reported_by
          @@Reported_by
        end
          @@Case_number =   Field.new('Case_Number')
        def self.Case_number
          @@Case_number
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Deal_name =   Field.new('Deal_Name')
        def self.Deal_name
          @@Deal_name
        end
          @@Phone =   Field.new('Phone')
        def self.Phone
          @@Phone
        end
          @@Account_name =   Field.new('Account_Name')
        def self.Account_name
          @@Account_name
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Solution =   Field.new('Solution')
        def self.Solution
          @@Solution
        end
          @@Status =   Field.new('Status')
        def self.Status
          @@Status
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Priority =   Field.new('Priority')
        def self.Priority
          @@Priority
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Comments =   Field.new('Comments')
        def self.Comments
          @@Comments
        end
          @@Product_name =   Field.new('Product_Name')
        def self.Product_name
          @@Product_name
        end
          @@Add_comment =   Field.new('Add_Comment')
        def self.Add_comment
          @@Add_comment
        end
          @@Case_origin =   Field.new('Case_Origin')
        def self.Case_origin
          @@Case_origin
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
          @@Case_reason =   Field.new('Case_Reason')
        def self.Case_reason
          @@Case_reason
        end
          @@Subject =   Field.new('Subject')
        def self.Subject
          @@Subject
        end
          @@Type =   Field.new('Type')
        def self.Type
          @@Type
        end
          @@Locked__s =   Field.new('Locked__s')
        def self.Locked__s
          @@Locked__s
        end
          @@Tag =   Field.new('Tag')
        def self.Tag
          @@Tag
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@Related_to =   Field.new('Related_To')
        def self.Related_to
          @@Related_to
        end
      end

      class Notes
          @@Owner =   Field.new('Owner')
        def self.Owner
          @@Owner
        end
          @@Modified_by =   Field.new('Modified_By')
        def self.Modified_by
          @@Modified_by
        end
          @@Modified_time =   Field.new('Modified_Time')
        def self.Modified_time
          @@Modified_time
        end
          @@Created_time =   Field.new('Created_Time')
        def self.Created_time
          @@Created_time
        end
          @@Parent_id =   Field.new('Parent_Id')
        def self.Parent_id
          @@Parent_id
        end
          @@Associated_id__s =   Field.new('Associated_Id__s')
        def self.Associated_id__s
          @@Associated_id__s
        end
          @@Created_by =   Field.new('Created_By')
        def self.Created_by
          @@Created_by
        end
          @@id =   Field.new('id')
        def self.id
          @@id
        end
          @@Note_title =   Field.new('Note_Title')
        def self.Note_title
          @@Note_title
        end
          @@Note_content =   Field.new('Note_Content')
        def self.Note_content
          @@Note_content
        end
          @@Record_status__s =   Field.new('Record_Status__s')
        def self.Record_status__s
          @@Record_status__s
        end
      end

    end
  end
end
