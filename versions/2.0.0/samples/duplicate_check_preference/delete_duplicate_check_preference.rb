require "ZOHOCRMSDK7_0"

class DeleteDuplicateCheckPreference
		def self.delete_duplicate_check_preference(module_api_name)
			duplicate_check_preference_operations =  ZOHOCRMSDK::DuplicateCheckPreference::DuplicateCheckPreferenceOperations.new(module_api_name)
			response = duplicate_check_preference_operations.delete_duplicate_check_preference
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.is_expected
					action_handler = response.data_object
					if action_handler.is_a? ZOHOCRMSDK::DuplicateCheckPreference::ActionWrapper
						action_wrapper = action_handler
						actionresponse = action_wrapper.duplicate_check_preference
						if actionresponse.is_a? ZOHOCRMSDK::DuplicateCheckPreference::SuccessResponse
							successresponse = actionresponse
							print "status: " + successresponse.status.value.to_s
							print "code: " + successresponse.code.value.to_s
							print "details: ".to_s
							successresponse.details.each do |k, v|
								print k + ": " + v.to_s
							end
							print "message: " + successresponse.message.to_s
						elsif actionresponse.is_a? ZOHOCRMSDK::DuplicateCheckPreference::APIException
							exception = actionresponse
							print "status: " + exception.status.value.to_s
							print "code: " + exception.code.value.to_s
							print "details: ".to_s
							exception.details.each do |k, v|
								print k + ": " + v.to_s
							end
							print "message: " + exception.message.to_s
						end
					elsif action_handler.is_a? ZOHOCRMSDK::DuplicateCheckPreference::APIException
						exception = action_handler
						print "status: " + exception.status.value.to_s
						print "code: " + exception.code.value.to_s
						print "details: ".to_s
						exception.details.each do |k, v|
							print k + ": " + v.to_s
						end
						print "message: " + exception.message.to_s
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
				delete_duplicate_check_preference(module_api_name)
			rescue Exception => e
				raise e
			end
		end
end
DeleteDuplicateCheckPreference.initialize_and_call