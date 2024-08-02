require_relative '../util/model'

module ZOHOCRMSDK
  module RescheduleHistory
    class RescheduleHistory
      include Util::Model

      # Creates an instance of RescheduleHistory
      def initialize
        @currency_symbol = nil
        @rescheduled_to = nil
        @review_process = nil
        @reschedule_reason = nil
        @sharing_permission = nil
        @name = nil
        @modified_by = nil
        @review = nil
        @rescheduled_by = nil
        @state = nil
        @canvas_id = nil
        @process_flow = nil
        @id = nil
        @rescheduled_time = nil
        @zia_visions = nil
        @approved = nil
        @modified_time = nil
        @approval = nil
        @created_time = nil
        @rescheduled_from = nil
        @appointment_name = nil
        @editable = nil
        @orchestration = nil
        @in_merge = nil
        @created_by = nil
        @approval_state = nil
        @reschedule_note = nil
        @key_modified = Hash.new
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
        @key_modified['$currency_symbol'] = 1
      end

        # The method to get the rescheduled_to
        # @return An instance of DateTime

      def rescheduled_to
        @rescheduled_to
      end

        # The method to set the value to rescheduled_to
        # @param rescheduled_to [DateTime] An instance of DateTime

      def rescheduled_to=(rescheduled_to)
        if rescheduled_to!=nil and !rescheduled_to.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rescheduled_to EXPECTED TYPE: DateTime', nil, nil)
        end
        @rescheduled_to = rescheduled_to
        @key_modified['Rescheduled_To'] = 1
      end

        # The method to get the review_process
        # @return A Boolean value

      def review_process
        @review_process
      end

        # The method to set the value to review_process
        # @param review_process [Boolean] A Boolean

      def review_process=(review_process)
        if review_process!=nil and ! [true, false].include?review_process
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: review_process EXPECTED TYPE: Boolean', nil, nil)
        end
        @review_process = review_process
        @key_modified['$review_process'] = 1
      end

        # The method to get the reschedule_reason
        # @return A String value

      def reschedule_reason
        @reschedule_reason
      end

        # The method to set the value to reschedule_reason
        # @param reschedule_reason [String] A String

      def reschedule_reason=(reschedule_reason)
        if reschedule_reason!=nil and !reschedule_reason.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reschedule_reason EXPECTED TYPE: String', nil, nil)
        end
        @reschedule_reason = reschedule_reason
        @key_modified['Reschedule_Reason'] = 1
      end

        # The method to get the sharing_permission
        # @return A String value

      def sharing_permission
        @sharing_permission
      end

        # The method to set the value to sharing_permission
        # @param sharing_permission [String] A String

      def sharing_permission=(sharing_permission)
        if sharing_permission!=nil and !sharing_permission.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sharing_permission EXPECTED TYPE: String', nil, nil)
        end
        @sharing_permission = sharing_permission
        @key_modified['$sharing_permission'] = 1
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
        @key_modified['Name'] = 1
      end

        # The method to get the modified_by
        # @return An instance of User

      def modified_by
        @modified_by
      end

        # The method to set the value to modified_by
        # @param modified_by [User] An instance of User

      def modified_by=(modified_by)
        if modified_by!=nil and !modified_by.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: User', nil, nil)
        end
        @modified_by = modified_by
        @key_modified['Modified_By'] = 1
      end

        # The method to get the review
        # @return A Boolean value

      def review
        @review
      end

        # The method to set the value to review
        # @param review [Boolean] A Boolean

      def review=(review)
        if review!=nil and ! [true, false].include?review
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: review EXPECTED TYPE: Boolean', nil, nil)
        end
        @review = review
        @key_modified['$review'] = 1
      end

        # The method to get the rescheduled_by
        # @return An instance of User

      def rescheduled_by
        @rescheduled_by
      end

        # The method to set the value to rescheduled_by
        # @param rescheduled_by [User] An instance of User

      def rescheduled_by=(rescheduled_by)
        if rescheduled_by!=nil and !rescheduled_by.is_a? User
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rescheduled_by EXPECTED TYPE: User', nil, nil)
        end
        @rescheduled_by = rescheduled_by
        @key_modified['Rescheduled_By'] = 1
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
        @key_modified['$state'] = 1
      end

        # The method to get the canvas_id
        # @return A String value

      def canvas_id
        @canvas_id
      end

        # The method to set the value to canvas_id
        # @param canvas_id [String] A String

      def canvas_id=(canvas_id)
        if canvas_id!=nil and !canvas_id.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: canvas_id EXPECTED TYPE: String', nil, nil)
        end
        @canvas_id = canvas_id
        @key_modified['$canvas_id'] = 1
      end

        # The method to get the process_flow
        # @return A Boolean value

      def process_flow
        @process_flow
      end

        # The method to set the value to process_flow
        # @param process_flow [Boolean] A Boolean

      def process_flow=(process_flow)
        if process_flow!=nil and ! [true, false].include?process_flow
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: process_flow EXPECTED TYPE: Boolean', nil, nil)
        end
        @process_flow = process_flow
        @key_modified['$process_flow'] = 1
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

        # The method to get the rescheduled_time
        # @return An instance of DateTime

      def rescheduled_time
        @rescheduled_time
      end

        # The method to set the value to rescheduled_time
        # @param rescheduled_time [DateTime] An instance of DateTime

      def rescheduled_time=(rescheduled_time)
        if rescheduled_time!=nil and !rescheduled_time.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rescheduled_time EXPECTED TYPE: DateTime', nil, nil)
        end
        @rescheduled_time = rescheduled_time
        @key_modified['Rescheduled_Time'] = 1
      end

        # The method to get the zia_visions
        # @return A Boolean value

      def zia_visions
        @zia_visions
      end

        # The method to set the value to zia_visions
        # @param zia_visions [Boolean] A Boolean

      def zia_visions=(zia_visions)
        if zia_visions!=nil and ! [true, false].include?zia_visions
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: zia_visions EXPECTED TYPE: Boolean', nil, nil)
        end
        @zia_visions = zia_visions
        @key_modified['$zia_visions'] = 1
      end

        # The method to get the approved
        # @return A Boolean value

      def approved
        @approved
      end

        # The method to set the value to approved
        # @param approved [Boolean] A Boolean

      def approved=(approved)
        if approved!=nil and ! [true, false].include?approved
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: approved EXPECTED TYPE: Boolean', nil, nil)
        end
        @approved = approved
        @key_modified['$approved'] = 1
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
        @key_modified['Modified_Time'] = 1
      end

        # The method to get the approval
        # @return An instance of Approval

      def approval
        @approval
      end

        # The method to set the value to approval
        # @param approval [Approval] An instance of Approval

      def approval=(approval)
        if approval!=nil and !approval.is_a? Approval
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: approval EXPECTED TYPE: Approval', nil, nil)
        end
        @approval = approval
        @key_modified['$approval'] = 1
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
        @key_modified['Created_Time'] = 1
      end

        # The method to get the rescheduled_from
        # @return An instance of DateTime

      def rescheduled_from
        @rescheduled_from
      end

        # The method to set the value to rescheduled_from
        # @param rescheduled_from [DateTime] An instance of DateTime

      def rescheduled_from=(rescheduled_from)
        if rescheduled_from!=nil and !rescheduled_from.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rescheduled_from EXPECTED TYPE: DateTime', nil, nil)
        end
        @rescheduled_from = rescheduled_from
        @key_modified['Rescheduled_From'] = 1
      end

        # The method to get the appointment_name
        # @return An instance of AppointmentName

      def appointment_name
        @appointment_name
      end

        # The method to set the value to appointment_name
        # @param appointment_name [AppointmentName] An instance of AppointmentName

      def appointment_name=(appointment_name)
        if appointment_name!=nil and !appointment_name.is_a? AppointmentName
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: appointment_name EXPECTED TYPE: AppointmentName', nil, nil)
        end
        @appointment_name = appointment_name
        @key_modified['Appointment_Name'] = 1
      end

        # The method to get the editable
        # @return A Boolean value

      def editable
        @editable
      end

        # The method to set the value to editable
        # @param editable [Boolean] A Boolean

      def editable=(editable)
        if editable!=nil and ! [true, false].include?editable
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: editable EXPECTED TYPE: Boolean', nil, nil)
        end
        @editable = editable
        @key_modified['$editable'] = 1
      end

        # The method to get the orchestration
        # @return A Boolean value

      def orchestration
        @orchestration
      end

        # The method to set the value to orchestration
        # @param orchestration [Boolean] A Boolean

      def orchestration=(orchestration)
        if orchestration!=nil and ! [true, false].include?orchestration
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: orchestration EXPECTED TYPE: Boolean', nil, nil)
        end
        @orchestration = orchestration
        @key_modified['$orchestration'] = 1
      end

        # The method to get the in_merge
        # @return A Boolean value

      def in_merge
        @in_merge
      end

        # The method to set the value to in_merge
        # @param in_merge [Boolean] A Boolean

      def in_merge=(in_merge)
        if in_merge!=nil and ! [true, false].include?in_merge
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: in_merge EXPECTED TYPE: Boolean', nil, nil)
        end
        @in_merge = in_merge
        @key_modified['$in_merge'] = 1
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
        @key_modified['Created_By'] = 1
      end

        # The method to get the approval_state
        # @return A String value

      def approval_state
        @approval_state
      end

        # The method to set the value to approval_state
        # @param approval_state [String] A String

      def approval_state=(approval_state)
        if approval_state!=nil and !approval_state.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: approval_state EXPECTED TYPE: String', nil, nil)
        end
        @approval_state = approval_state
        @key_modified['$approval_state'] = 1
      end

        # The method to get the reschedule_note
        # @return A String value

      def reschedule_note
        @reschedule_note
      end

        # The method to set the value to reschedule_note
        # @param reschedule_note [String] A String

      def reschedule_note=(reschedule_note)
        if reschedule_note!=nil and !reschedule_note.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reschedule_note EXPECTED TYPE: String', nil, nil)
        end
        @reschedule_note = reschedule_note
        @key_modified['Reschedule_Note'] = 1
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
