require "ZOHOCRMSDK7_0"

class GetPickListValues
		def self.get_pick_list_values(field_id, module_api_name)
			pick_list_values_operations =  ZOHOCRMSDK::PickListValues::PickListValuesOperations.new(field_id, module_api_name)
			response = pick_list_values_operations.get_pick_list_values
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.status_code == 204
					print "no Content".to_s
					return
				end
				if response.is_expected
					response_handler = response.data_object
					if response_handler.is_a? ZOHOCRMSDK::PickListValues::ResponseWrapper
						response_wrapper = response_handler
						pick_list_values= response_wrapper.pick_list_values
						if pick_list_values != nil
							pick_list_values.each do |pick_list_value|
								print "pick_list_values SequenceNumber : " + pick_list_value.sequence_number.to_s
								print "pick_list_values DisplayValue : " + pick_list_value.display_value.to_s
								print "pick_list_values ReferenceValue : " + pick_list_value.reference_value.to_s
								print "pick_list_values ColourCode( : " + pick_list_value.colour_code.to_s
								print "pick_list_values ActualValue : " + pick_list_value.actual_value.to_s
								print "pick_list_values Id : " + pick_list_value.id.to_s
								print "pick_list_values Type : " + pick_list_value.type.to_s
								layout_associations= pick_list_value.layout_associations
								if layout_associations != nil
									layout_associations.each do |layout_association|
										print "pick_list_values LayoutAssociation Id : " + layout_association.id.to_s
										print "pick_list_values LayoutAssociation Name : " + layout_association.name.to_s
										print "pick_list_values LayoutAssociation APIName : " + layout_association.api_name.to_s
									end
								end
							end
						end
					elsif response_handler.is_a? ZOHOCRMSDK::PickListValues::APIException
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
				module_api_name = "Deals"
				field_id = 7272250335322
				get_pick_list_values(field_id, module_api_name)
			rescue Exception => e
				raise e
			end
		end
end
GetPickListValues.initialize_and_call