require "ZOHOCRMSDK7_0"

class CreateZiaPeopleEnrichment
		def self.create_zia_people_enrichment
			zia_people_enrichment_operations =  ZOHOCRMSDK::ZiaPeopleEnrichment::ZiaPeopleEnrichmentOperations.new
			request =  ZOHOCRMSDK::ZiaPeopleEnrichment::BodyWrapper.new
			ziapeopleenrichment=[]
			ziapeopleenrichment1 =  ZOHOCRMSDK::ZiaPeopleEnrichment::ZiaPeopleEnrichment.new
			enrich_based_on =  ZOHOCRMSDK::ZiaPeopleEnrichment::EnrichBasedOn.new
			enrich_based_on.name="zoho"
			enrich_based_on.email="sales@zohocorp.com"
			company =  ZOHOCRMSDK::ZiaPeopleEnrichment::Company.new
			company.name="zoho"
			company.website="www.zoho.com"
			enrich_based_on.company = company
			social =  ZOHOCRMSDK::ZiaPeopleEnrichment::Social.new
			social.facebook="facebook.com/zoho"
			social.linkedin="linkedin.com/zoho"
			social.twitter="twitter.com/zoho"
			enrich_based_on.social = social
			ziapeopleenrichment1.enrich_based_on = enrich_based_on
			ziapeopleenrichment.push(ziapeopleenrichment1)
			request.ziapeopleenrichment = ziapeopleenrichment
			param_instance =  ZOHOCRMSDK::ParameterMap.new
			param_instance.add(ZOHOCRMSDK::ZiaPeopleEnrichment::ZiaPeopleEnrichmentOperations::CreateZiaPeopleEnrichmentParam.module_1, "Vendors")
			response = zia_people_enrichment_operations.create_zia_people_enrichment(request, param_instance)
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.is_expected
					action_handler = response.data_object
					if action_handler.is_a? ZOHOCRMSDK::ZiaPeopleEnrichment::ActionWrapper
						action_wrapper = action_handler
						actionresponses= action_wrapper.ziapeopleenrichment
						actionresponses.each do |actionresponse|
							if actionresponse.is_a? ZOHOCRMSDK::ZiaPeopleEnrichment::SuccessResponse
								successresponse = actionresponse
								print "status: " + successresponse.status.value.to_s
								print "code: " + successresponse.code.value.to_s
								print "details: ".to_s
								successresponse.details.each do |k, v|
									print k + ": " + v.to_s
								end
								print "message: " + successresponse.message.to_s
							elsif actionresponse.is_a? ZOHOCRMSDK::ZiaPeopleEnrichment::APIException
								exception = actionresponse
								print "status: " + exception.status.value.to_s
								print "code: " + exception.code.value.to_s
								print "details: ".to_s
								exception.details.each do |k, v|
									print k + ": " + v.to_s
								end
								print "message: " + exception.message.value.to_s
							end
						end
					elsif action_handler.is_a? ZOHOCRMSDK::ZiaPeopleEnrichment::APIException
						exception = action_handler
						print "status: " + exception.status.value.to_s
						print "code: " + exception.code.value.to_s
						print "details: ".to_s
						exception.details.each do |k, v|
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
				create_zia_people_enrichment
			rescue Exception => e
				raise e
			end
		end
end

CreateZiaPeopleEnrichment.initialize_and_call