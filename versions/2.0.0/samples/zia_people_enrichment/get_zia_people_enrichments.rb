require "ZOHOCRMSDK7_0"

class GetZiaPeopleEnrichments
		def self.get_zia_people_enrichments
			zia_people_enrichment_operations =  ZOHOCRMSDK::ZiaPeopleEnrichment::ZiaPeopleEnrichmentOperations.new
			param_instance =  ZOHOCRMSDK::ParameterMap.new
			response = zia_people_enrichment_operations.get_zia_people_enrichments(param_instance)
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.status_code == 204
					print "no Content".to_s
					return
				end
				if response.is_expected
					response_handler = response.data_object
					if response_handler.is_a? ZOHOCRMSDK::ZiaPeopleEnrichment::ResponseWrapper
						response_wrapper = response_handler
						ziapeopleenrichment= response_wrapper.ziapeopleenrichment
						if ziapeopleenrichment != nil
							ziapeopleenrichment.each do |ziapeopleenrichment1|
								print "zia_people_enrichment CreatedTime : " + ziapeopleenrichment1.created_time.to_s
								print "zia_people_enrichment Id : " + ziapeopleenrichment1.id.to_s
								user = ziapeopleenrichment1.created_by
								if user != nil
									print "zia_people_enrichment User Id : " + user.id.to_s
									print "zia_people_enrichment User Name : " + user.name.to_s
								end
								print "zia_people_enrichment Status : " + ziapeopleenrichment1.status.to_s
							end
						end
						info = response_wrapper.info
						if info != nil
							if info.per_page != nil
								print "zia_people_enrichment Info PerPage: " + info.per_page.to_s.to_s
							end
							if info.count != nil
								print "zia_people_enrichment Info Count: " + info.count.to_s.to_s
							end
							if info.page != nil
								print "zia_people_enrichment Info Page: " + info.page.to_s.to_s
							end
							if info.more_records != nil
								print "zia_people_enrichment Info MoreRecords: " + info.more_records.to_s.to_s
							end
						end
					elsif response_handler.is_a? ZOHOCRMSDK::ZiaPeopleEnrichment::APIException
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
				get_zia_people_enrichments
			rescue Exception => e
				raise e
			end
		end
end
GetZiaPeopleEnrichments.initialize_and_call