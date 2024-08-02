require "ZOHOCRMSDK7_0"

class CloneRecord
		def self.clone_record(module_api_name, record_id)
			record_operations =  ZOHOCRMSDK::Record::RecordOperations.new(module_api_name)
			response = record_operations.clone_record(record_id)
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.is_expected
					action_handler = response.data_object
					if action_handler.is_a? ZOHOCRMSDK::Record::ActionWrapper
						action_wrapper = action_handler
						action_responses= action_wrapper.data
						action_responses.each do |action_response|
							if action_response.is_a? ZOHOCRMSDK::Record::SuccessResponse
								success_response = action_response
								print "status: " + success_response.status.value.to_s
								print "code: " + success_response.code.value.to_s
								print "details: ".to_s
								success_response.details.each do |k, v|
									print k + ": " + v.to_s
								end
								print "message: " + success_response.message.value.to_s
							elsif action_response.is_a? ZOHOCRMSDK::Record::APIException
								exception = action_response
								print "status: " + exception.status.value.to_s
								print "code: " + exception.code.value.to_s
								print "details: ".to_s
								exception.each do |k, v|
									print k + ": " + v.to_s
								end
								print "message: " + exception.message.value.to_s
							end
						end
					elsif action_handler.is_a? ZOHOCRMSDK::Record::APIException
						exception = action_handler
						print "status: " + exception.status.value.to_s
						print "code: " + exception.code.value.to_s
						print "details: ".to_s
						exception.each do |k, v|
							print k + ": " + v.to_s
						end
						print "message: " + exception.message.value.to_s
					end
				else
          response_object = response.data_object
          response_object.instance_variables.each do |field_1|
            print field_1
            print "\n"
            print response_object.instance_variable_get(field_1)

					end
				end
			end
		end
	def self.initialize_and_call
			begin
				environment = ZOHOCRMSDK::DC::USDataCenter::PRODUCTION
				token = ZOHOCRMSDK::Authenticator::OAuthToken.new(client_id:"client_id", client_secret:"client_secret", grant_token: "grant_token")
				ZOHOCRMSDK::Initializer.initialize(environment: environment, token: token)
				module_api_name = "Leads"
				record_id = 72722514002
				clone_record(module_api_name, record_id)
			rescue Exception => e
				raise e
			end
		end
end
CloneRecord.initialize_and_call