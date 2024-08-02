require "ZOHOCRMSDK7_0"

class UnenrolCadences
		def self.unenrol_cadences(module_api_name)
			cadences_execution_operations =  ZOHOCRMSDK::CadencesExecution::CadencesExecutionOperations.new
			request =  ZOHOCRMSDK::CadencesExecution::BodyWrapper.new
			cadences_ids=[]
			cadences_ids.push("34770785001")
			request.cadences_ids = cadences_ids
			ids=[]
			ids.push("347750001")
			request.ids = ids
			response = cadences_execution_operations.unenrol_cadences(module_api_name, request)
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.is_expected
					action_handler = response.data_object
					if action_handler.is_a? ZOHOCRMSDK::CadencesExecution::ActionWrapper
						action_wrapper = action_handler
						actionresponses= action_wrapper.data
						actionresponses.each do |actionresponse|
							if actionresponse.is_a? ZOHOCRMSDK::CadencesExecution::SuccessResponse
								successresponse = actionresponse
								print "status: " + successresponse.status.value.to_s
								print "code: " + successresponse.code.value.to_s
								print "details: ".to_s
								successresponse.each do |k, v|
									print k + ": " + v.to_s
								end
								print "message: " + successresponse.message.to_s
							elsif actionresponse.is_a? ZOHOCRMSDK::CadencesExecution::APIException
								exception = actionresponse
								print "status: " + exception.status.value.to_s
								print "code: " + exception.code.value.to_s
								print "details: ".to_s
								exception.each do |k, v|
									print k + ": " + v.to_s
								end
								print "message: " + exception.message.to_s
							end
						end
					elsif action_handler.is_a? ZOHOCRMSDK::CadencesExecution::APIException
						exception = action_handler
						print "status: " + exception.status.value.to_s
						print "code: " + exception.code.value.to_s
						print "details: ".to_s
						exception.each do |k, v|
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
				module_api_name = "leads"
				unenrol_cadences(module_api_name)
			rescue Exception => e
				raise e
			end
		end
end
UnenrolCadences.initialize_and_call