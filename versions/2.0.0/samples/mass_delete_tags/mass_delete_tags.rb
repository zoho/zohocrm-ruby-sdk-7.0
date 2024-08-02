require "ZOHOCRMSDK7_0"

class MassDeleteTags
		def self.mass_delete_tags
			mass_delete_tags_operations =  ZOHOCRMSDK::MassDeleteTags::MassDeleteTagsOperations.new
			request =  ZOHOCRMSDK::MassDeleteTags::BodyWrapper.new
			mass_delete=[]
			mass_delete1 =  ZOHOCRMSDK::MassDeleteTags::MassDelete.new
			module_1 =  ZOHOCRMSDK::MassDeleteTags::Module.new
			module_1.api_name="Leads"
			module_1.id = 727225000037
			mass_delete1.module = module_1
			tags=[]
			tag =  ZOHOCRMSDK::MassDeleteTags::Tag.new
			tag.id = 7272250532001
			tags.push(tag)
			tag =  ZOHOCRMSDK::MassDeleteTags::Tag.new
			tag.id = 7272250532008
			tags.push(tag)
			mass_delete1.tags = tags
			mass_delete.push(mass_delete1)
			request.mass_delete = mass_delete
			response = mass_delete_tags_operations.mass_delete_tags(request)
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.is_expected
					action_response = response.data_object
					if action_response.is_a? ZOHOCRMSDK::MassDeleteTags::SuccessResponse
						success_response = action_response
						print "status: " + success_response.status.value.to_s
						print "code: " + success_response.code.value.to_s
						print "details: ".to_s
						success_response.details.each do |k, v|
							print k + ": " + v.to_s
						end
						print "message: " + success_response.message.to_s
					elsif action_response.is_a? ZOHOCRMSDK::MassDeleteTags::APIException
						exception = action_response
						print "status: " + exception.status.value.to_s + "\n"
						print "code: " + exception.code.value.to_s + "\n"
						print "details: ".to_s
						if exception.details != nil
							exception.details.each do |k, v|
								print k + ": " + v.to_s + "\n"
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
				mass_delete_tags
			rescue Exception => e
				raise e
			end
		end
end
MassDeleteTags.initialize_and_call