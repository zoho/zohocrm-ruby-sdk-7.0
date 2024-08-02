require "ZOHOCRMSDK7_0"

class GetZiaOrgEnrichment
		def self.get_zia_org_enrichment(zia_org_enrichment_id)
			zia_org_enrichment_operations =  ZOHOCRMSDK::ZiaOrgEnrichment::ZiaOrgEnrichmentOperations.new
			response = zia_org_enrichment_operations.get_zia_org_enrichment(zia_org_enrichment_id)
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.status_code == 204
					print "no Content".to_s
					return
				end
				if response.is_expected
					response_handler = response.data_object
					if response_handler.is_a? ZOHOCRMSDK::ZiaOrgEnrichment::ResponseWrapper
						response_wrapper = response_handler
						ziaorgenrichment= response_wrapper.ziaorgenrichment
						if ziaorgenrichment != nil
							ziaorgenrichment.each do |ziaorgenrichment1|
								enriched_data = ziaorgenrichment1.enriched_data
								if enriched_data != nil
									print "zia_org_enrichment EnrichedData OrgStatus : " + enriched_data.org_status.to_s
									description= enriched_data.description
									if description != nil
										description.each do |description1|
											print "zia_org_enrichment EnrichedData Title : " + description1.title.to_s
											print "zia_org_enrichment EnrichedData Description : " + description1.description.to_s	
										end
									end
									print "zia_org_enrichment EnrichedData Description : " + enriched_data.description.to_s
									print "zia_org_enrichment EnrichedData CEO : " + enriched_data.ceo.to_s
									print "zia_org_enrichment EnrichedData SecondaryEmail : " + enriched_data.secondary_email.to_s
									print "zia_org_enrichment EnrichedData Revenue : " + enriched_data.revenue.to_s
									print "zia_org_enrichment EnrichedData YearsInIndustry : " + enriched_data.years_in_industry.to_s
									other_contacts= enriched_data.other_contacts
									if other_contacts != nil
										other_contacts.each do |other_contact|
											print "zia_org_enrichment EnrichedData OtherContacts : " + other_contact.to_s
										end
									end
									print "zia_org_enrichment EnrichedData TechnoGraphicData : " + enriched_data.techno_graphic_data.to_s
									print "zia_org_enrichment EnrichedData Logo : " + enriched_data.logo.to_s
									print "zia_org_enrichment EnrichedData SecondaryContact : " + enriched_data.secondary_contact.to_s
									print "zia_org_enrichment EnrichedData Id: " + enriched_data.id.to_s
									other_emails= enriched_data.other_emails
									if other_emails != nil
										other_emails.each do |other_email|
											print "zia_org_enrichment EnrichedData OtherEmails : " + other_email.to_s
										end
									end
									
									print "zia_org_enrichment EnrichedData SignIn : " + enriched_data.sign_in.to_s
									print "zia_org_enrichment EnrichedData Website : " + enriched_data.website.to_s
									
									address= enriched_data.address
									if address != nil
										address.each do |address1|
											print "zia_org_enrichment EnrichedData Address Country : " + address1.country.to_s
											print "zia_org_enrichment EnrichedData Address City : " + address1.city.to_s
											print "zia_org_enrichment EnrichedData Address PinCode : " + address1.pin_code.to_s
											print "zia_org_enrichment EnrichedData Address State : " + address1.state.to_s
											print "zia_org_enrichment EnrichedData Address FillAddress : " + address1.fill_address.to_s
										end
									end
									print "zia_org_enrichment EnrichedData SignUp : " + enriched_data.sign_up.to_s
									print "zia_org_enrichment EnrichedData OrgType : " + enriched_data.org_type.to_s
									head_quarters= enriched_data.head_quarters
									if head_quarters != nil
										head_quarters.each do |head_quarters1|
											print "zia_org_enrichment EnrichedData HeadQuarters Country : " + head_quarters1.country.to_s
											print "zia_org_enrichment EnrichedData HeadQuarters City : " + head_quarters1.city.to_s
											print "zia_org_enrichment EnrichedData HeadQuarters PinCode : " + head_quarters1.pin_code.to_s
											print "zia_org_enrichment EnrichedData HeadQuarters State : " + head_quarters1.state.to_s
											print "zia_org_enrichment EnrichedData HeadQuarters FillAddress : " + head_quarters1.fill_address.to_s
										end
									end
									print "zia_org_enrichment EnrichedData NoOfEmployees : " + enriched_data.no_of_employees.to_s
									territory_list= enriched_data.territory_list
									if territory_list != nil
										territory_list.each do |territory|
											print "zia_org_enrichment EnrichedData TerritoryList : " + territory.to_s
										end
									end
									print "zia_org_enrichment EnrichedData FoundingYear : " + enriched_data.founding_year.to_s
									industries= enriched_data.industries
									if industries != nil
										industries.each do |indusbegin|
											print "zia_org_enrichment EnrichedData Industries Name : " + indusbegin.name.to_s
											print "zia_org_enrichment EnrichedData Industries Description : " + indusbegin.description.to_s
										end
									end
									print "zia_org_enrichment EnrichedData Name : " + enriched_data.name.to_s
									print "zia_org_enrichment EnrichedData PrimaryEmail : " + enriched_data.primary_email.to_s
									business_model= enriched_data.business_model
									if business_model != nil
										business_model.each do |business_model1|
											print "zia_org_enrichment EnrichedData BusinessModel : " + business_model1.to_s
										end
									end
									print "zia_org_enrichment EnrichedData PrimaryContact : " + enriched_data.primary_contact.to_s
									social_media= enriched_data.social_media
									if social_media != nil
										social_media.each do |social_media1|
											print "zia_org_enrichment EnrichedData SocialMedia MediaType : " + social_media1.media_type.to_s
											media_url= social_media1.media_url
											if media_url != nil
												media_url.each do |media_url1|
													print "zia_org_enrichment EnrichedData SocialMedia MediaUrl: " + media_url1.to_s
												end
											end
										end
									end
								end
								
								enrich_based_on = ziaorgenrichment1.enrich_based_on
								if enrich_based_on != nil
									print "zia_org_enrichment EnrichBasedOn Name : " + enrich_based_on.name.to_s
									print "zia_org_enrichment EnrichBasedOn Email : " + enrich_based_on.email.to_s
									print "zia_org_enrichment EnrichBasedOn Website : " + enrich_based_on.website.to_s
								end
								
								print "zia_org_enrichment Id : " + ziaorgenrichment1.id.to_s
								print "zia_org_enrichment Status : " + ziaorgenrichment1.status.to_s
							end
						end
					elsif response_handler.is_a? ZOHOCRMSDK::ZiaOrgEnrichment::APIException
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
				zia_org_enrichment_id = 727225561001
				get_zia_org_enrichment(zia_org_enrichment_id)
			rescue Exception => e
				raise e
			end
		end
end
GetZiaOrgEnrichment.initialize_and_call