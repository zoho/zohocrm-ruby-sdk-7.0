require "ZOHOCRMSDK7_0"

class GetSupportedAPI
		def self.get_supported_api
			filters = nil
			apis_operations =  ZOHOCRMSDK::APIs::APIsOperations.new(filters)
			response = apis_operations.get_supported_api
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.status_code == 204
					print "no Content".to_s
					return
				end
				if response.is_expected
					response_handler = response.data_object
					if response_handler.is_a? ZOHOCRMSDK::APIs::ResponseWrapper
						response_wrapper = response_handler
						apis= response_wrapper.apis
						if apis != nil
							apis.each do |api|
								print "api Path : " + api.path.to_s
								operation_types= api.operation_types
								operation_types.each do |operation_type|
									print "api Operation Method : " + operation_type.method.to_s
									print "api Operation OAuthScope : " + operation_type.oauth_scope.to_s
									print "api Operation MaxCredits : " + operation_type.max_credits.to_s
									print "api Operation MinCredits : " + operation_type.min_credits.to_s
								end
							end
						end
					elsif response_handler.is_a? ZOHOCRMSDK::APIs::APIException
						exception = response_handler
						print "status: " + exception.status.value.to_s
						print "code: " + exception.code.value.to_s
						print "details: ".to_s
						exception.each do |k, v|
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
				get_supported_api
			rescue Exception => e
				raise e
			end
		end
end
GetSupportedAPI.initialize_and_call