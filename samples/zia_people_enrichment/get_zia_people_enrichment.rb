require "ZOHOCRMSDK7_0"

class GetZiaPeopleEnrichment
		def self.get_zia_people_enrichment(zia_people_enrichment_id)
			zia_people_enrichment_operations =  ZOHOCRMSDK::ZiaPeopleEnrichment::ZiaPeopleEnrichmentOperations.new
			response = zia_people_enrichment_operations.get_zia_people_enrichment(zia_people_enrichment_id)
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
								enriched_data = ziapeopleenrichment1.enriched_data
								if enriched_data != nil
									print "zia_people_enrichment EnrichedData Website : " + enriched_data.website.to_s
									email_infos= enriched_data.email_infos
									if email_infos != nil
										email_infos.each do |email_info|
											print "zia_people_enrichment EnrichedData EmailInfo Type : " + email_info.type.to_s
											print "zia_people_enrichment EnrichedData EmailInfo Email : " + email_info.email.to_s	
										end
									end
									print "zia_people_enrichment EnrichedData Gender : " + enriched_data.gender.to_s
									company_info = enriched_data.company_info
									if company_info != nil
										print "zia_people_enrichment EnrichedData CompanyInfo Name : " + company_info.name.to_s
										industries= company_info.industries
										if industries != nil
											industries.each do |indusbegin|
												print "zia_people_enrichment EnrichedData CompanyInfo Industries Name : " + indusbegin.name.to_s
												print "zia_people_enrichment EnrichedData CompanyInfo Industries Description : " + indusbegin.description.to_s
											end
										end
										
										experiences= company_info.experiences
										if experiences != nil
											experiences.each do |experience|
												print "zia_people_enrichment EnrichedData CompanyInfo Experience EndDate : " + experience.end_date.to_s
												print "zia_people_enrichment EnrichedData CompanyInfo Experience CompanyName : " + experience.company_name.to_s
												print "zia_people_enrichment EnrichedData CompanyInfo Experience Title : " + experience.title.to_s
												print "zia_people_enrichment EnrichedData CompanyInfo Experience StartDate : " + experience.start_date.to_s
												print "zia_people_enrichment EnrichedData CompanyInfo Experience Primary : " + experience.primary.to_s
											end
										end
									end
									print "zia_people_enrichment EnrichedData LastName : " + enriched_data.last_name.to_s
									educations= enriched_data.educations
									if educations != nil
										print "zia_people_enrichment EnrichedData Educations : ".to_s
										print educations.to_s
									end
									print "zia_people_enrichment EnrichedData MiddleName : " + enriched_data.middle_name.to_s
									skills= enriched_data.skills
									if skills!= nil
										print "zia_people_enrichment EnrichedData Skills : ".to_s
										print skills.to_s
									end
									other_contacts= enriched_data.other_contacts
									if other_contacts != nil
										other_contacts.each do |other_contact|
											print "zia_people_enrichment EnrichedData OtherContacts : " + other_contact.to_s
										end
									end
									address_list_info= enriched_data.address_list_info
									if address_list_info != nil
										address_list_info.each do |address_list_info1|
											print "zia_people_enrichment EnrichedData AddressListInfo Continent : " + address_list_info1.continent.to_s
											print "zia_people_enrichment EnrichedData AddressListInfo Country : " + address_list_info1.country.to_s
											print "zia_people_enrichment EnrichedData AddressListInfo Name : " + address_list_info1.name.to_s
											print "zia_people_enrichment EnrichedData AddressListInfo Region : " + address_list_info1.region.to_s
											print "zia_people_enrichment EnrichedData AddressListInfo Primary : " + address_list_info1.primary.to_s
										end
									end
									primary_address_info = enriched_data.primary_address_info
									if primary_address_info != nil
										print "zia_people_enrichment EnrichedData PrimaryAddressInfo Continent : " + primary_address_info.continent.to_s
										print "zia_people_enrichment EnrichedData PrimaryAddressInfo country : " + primary_address_info.country.to_s
										print "zia_people_enrichment EnrichedData PrimaryAddressInfo Name : " + primary_address_info.name.to_s
										print "zia_people_enrichment EnrichedData PrimaryAddressInfo Region : " + primary_address_info.region.to_s
										print "zia_people_enrichment EnrichedData PrimaryAddressInfo Primary : " + primary_address_info.primary.to_s
									end
									print "zia_people_enrichment EnrichedData Name : " + enriched_data.name.to_s
									print "zia_people_enrichment EnrichedData SecondaryContact : " + enriched_data.secondary_contact.to_s
									print "zia_people_enrichment EnrichedData PrimaryEmail : " + enriched_data.primary_email.to_s
									print "zia_people_enrichment EnrichedData Designation : " + enriched_data.designation.to_s
									print "zia_people_enrichment EnrichedData Id : " + enriched_data.id.to_s
									interests= enriched_data.interests
									if interests != nil
										print "zia_people_enrichment EnrichedData Interests : ".to_s
										print interests.to_s
									end
									print "zia_people_enrichment EnrichedData FirstName : " + enriched_data.first_name.to_s
									print "zia_people_enrichment EnrichedData PrimaryContact : " + enriched_data.primary_contact.to_s
									social_media= enriched_data.social_media
									if social_media != nil
										social_media.each do |social_media1|
											print "zia_people_enrichment EnrichedData SocialMedia MediaType : " + social_media1.media_type.to_s
											media_url= social_media1.media_url
											if media_url != nil
												media_url.each do |media_url1|
													print "zia_people_enrichment EnrichedData SocialMedia MediaUrl: " + media_url1.to_s
												end
											end
										end
									end
								end
								enrich_based_on = ziapeopleenrichment1.enrich_based_on
								if enrich_based_on!= nil
									social = enrich_based_on.social
									if social!= nil
										print "zia_people_enrichment EnrichBasedOn Social Facebook : " + social.facebook.to_s
										print "zia_people_enrichment EnrichBasedOn Social Linkedin : " + social.linkedin.to_s
										print "zia_people_enrichment EnrichBasedOn Social Twitter : " + social.twitter.to_s
									end
									print "zia_people_enrichment EnrichBasedOn Name : " + enrich_based_on.name.to_s
									company = enrich_based_on.company
									if company  != nil
										print "zia_people_enrichment EnrichBasedOn Company Website : " + company.website.to_s
										print "zia_people_enrichment EnrichBasedOn Company Name : " + company.name.to_s
									end
									print "zia_people_enrichment EnrichBasedOn Email : " + enrich_based_on.email.to_s
								end
								
								print "zia_people_enrichment Id : " + ziapeopleenrichment1.id.to_s
								print "zia_people_enrichment Status : " + ziapeopleenrichment1.status.to_s
							end
						end
					elsif response_handler.is_a? ZOHOCRMSDK::ZiaPeopleEnrichment::APIException
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
				zia_people_enrichment_id = 7272200563001
				get_zia_people_enrichment(zia_people_enrichment_id)
			rescue Exception => e
				raise e
			end
		end
end
GetZiaPeopleEnrichment.initialize_and_call