require "ZOHOCRMSDK7_0"

class GetDuplicateCheckPreference
		def self.get_duplicate_check_preference(module_api_name)
			duplicate_check_preference_operations =  ZOHOCRMSDK::DuplicateCheckPreference::DuplicateCheckPreferenceOperations.new(module_api_name)
			response = duplicate_check_preference_operations.get_duplicate_check_preference
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.status_code == 204
					print "no Content".to_s
					return
				end
				if response.is_expected
					response_handler = response.data_object
					if response_handler.is_a? ZOHOCRMSDK::DuplicateCheckPreference::ResponseWrapper
						response_wrapper = response_handler
						duplicate_check_preference = response_wrapper.duplicate_check_preference
						print "duplicate_check_preference Type : " + duplicate_check_preference.type.value.to_s
						type_configurations= duplicate_check_preference.type_configurations
						if type_configurations != nil
							type_configurations.each do |type_configuration|
								mapped_module = type_configuration.mapped_module
								if mapped_module != nil
									print "duplicate_check_preference TypeConfiguration MappedModule Id : " + mapped_module.id.to_s
									print "duplicate_check_preference TypeConfiguration MappedModule Name : " + mapped_module.name.to_s
									print "duplicate_check_preference TypeConfiguration MappedModule APIName : " + mapped_module.api_name.to_s
								end
								field_mappings= type_configuration.field_mappings
								if field_mappings!= nil
									field_mappings.each do |field_mapping|
										current_field = field_mapping.current_field
										if current_field!= nil
											print "duplicate_check_preference TypeConfiguration FieldMappings CurrentField Id : " + current_field.id.to_s
											print "duplicate_check_preference TypeConfiguration FieldMappings CurrentField Name : " + current_field.name.to_s
											print "duplicate_check_preference TypeConfiguration FieldMappings CurrentField APIName : " + current_field.api_name.to_s
										end
										mapped_field = field_mapping.mapped_field
										if mapped_field != nil
											print "duplicate_check_preference TypeConfiguration FieldMappings MappedField Id : " + mapped_field.id.to_s
											print "duplicate_check_preference TypeConfiguration FieldMappings MappedField Name : " + mapped_field.name.to_s
											print "duplicate_check_preference TypeConfiguration FieldMappings MappedField APIName : " + mapped_field.api_name.to_s
										end
									end
								end
							end	
						end
					elsif response_handler.is_a? ZOHOCRMSDK::DuplicateCheckPreference::APIException
						exception = response_handler
						print "status: " + exception.status.value.to_s
						print "code: " + exception.code.value.to_s
						print "details: ".to_s
						exception.details.each do |k, v|
							print k + ": " + v.to_s
						end
						print "message: " + exception.message.to_s
					end
				elsif response.status_code != 204
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
				get_duplicate_check_preference(module_api_name)
			rescue Exception => e
				raise e
			end
		end
end
GetDuplicateCheckPreference.initialize_and_call