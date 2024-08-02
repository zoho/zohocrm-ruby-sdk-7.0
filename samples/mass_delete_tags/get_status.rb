require "ZOHOCRMSDK7_0"

class GetStatus
		def self.get_status
			mass_delete_tags_operations = ZOHOCRMSDK::MassDeleteTags::MassDeleteTagsOperations.new
			param_instance =  ZOHOCRMSDK::ParameterMap.new
			param_instance.add(ZOHOCRMSDK::MassDeleteTags::MassDeleteTagsOperations::GetStatusParam.job_id, "727225552001")
			response = mass_delete_tags_operations.get_status(param_instance)
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.is_expected
					response_handler = response.data_object
					if response_handler.is_a? ZOHOCRMSDK::MassDeleteTags::StatusResponseWrapper
						status_response_wrapper = response_handler
						status_action_response= status_response_wrapper.mass_delete
						status_action_response.each do |status_action_response1|
							if status_action_response1.is_a? ZOHOCRMSDK::MassDeleteTags::MassDeleteDetails
								mass_delete_detail = status_action_response1
								print "status JobId: " + mass_delete_detail.job_id.to_s
								print "status TotalCount: " + mass_delete_detail.total_count.to_s
								print "status FailedCount: " + mass_delete_detail.failed_count.to_s
								print "status DeletedCount: " + mass_delete_detail.deleted_count.to_s
								print "job Status: " + mass_delete_detail.status.value.to_s
							elsif status_action_response1.is_a? ZOHOCRMSDK::MassDeleteTags::APIException
								exception = status_action_response1
								print "status: " + exception.status.value.to_s
								print "code: " + exception.code.value.to_s
								print "details: ".to_s
								if exception.details != nil
									exception.details.each do |k, v|
										print k + ": " + v.to_s
									end
								end
								print "message: " + exception.message.to_s
							end
						end
					elsif response_handler.is_a? ZOHOCRMSDK::MassDeleteTags::APIException
						exception = response_handler
						print "status: " + exception.status.value.to_s
						print "code: " + exception.code.value.to_s
						print "details: ".to_s
						if exception.details != nil
							exception.details.each do |k, v|
								print k + ": " + v.to_s
							end
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
				get_status
			rescue Exception => e
				raise e
			end
		end
end
GetStatus.initialize_and_call