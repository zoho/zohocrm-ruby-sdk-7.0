require "ZOHOCRMSDK7_0"

class GetDataEnrichment
		def self.get_data_enrichment
			features_operations = ZOHOCRMSDK::Features::FeaturesOperations.new
			response = features_operations.get_data_enrichment
			if response != nil
				print "status Code: " + response.status_code.to_s
				if [204, 304].include? response.status_code
					print response.status_code == 204 ? "no Content" : "not Modified".to_s
					return
				end
				if response.is_expected
					response_handler = response.data_object
					if response_handler.is_a? ZOHOCRMSDK::Features::ResponseWrapper
						response_wrapper = response_handler
						features= response_wrapper.features
						if features != nil
							features.each do |feature|
								components= feature.components
								if components != nil
									components.each do |component|
										print "feature Component APIName : " + component.api_name.to_s
										print "feature Component ModuleSupported : " + component.module_supported.to_s
										detail = component.details
										if detail != nil
											limit = detail.limits
											if limit != nil
												print "feature Component Detail Limit EditionLimit: " + limit.edition_limit.to_s
												print "feature Component Detail Limit Total: " + limit.total.to_s
											end
											used_count = detail.used_count
											if used_count != nil
												print "feature Component Detail UsedCount EditionLimit: " + used_count.edition_limit.to_s
												print "feature Component Detail UsedCount Total: " + used_count.total.to_s
											end
										end
										print "feature Component FeatureLabel : " + component.feature_label.to_s
									end
								end
								print "feature APIName : " + feature.api_name.to_s
								parent_feature = feature.parent_feature
								if parent_feature != nil
									print "feature ParentFeature APIName: " + parent_feature.api_name.to_s
								end
								print "feature ModuleSupported : " + feature.module_supported.to_s
								detail = feature.details
								if detail != nil
									limit = detail.limits
									if limit != nil
										print "feature Detail Limit EditionLimit: " + limit.edition_limit.to_s
										print "feature Detail Limit Total: " + limit.total.to_s
									end
									used_count = detail.used_count
									if used_count != nil
										print "feature Component Detail UsedCount EditionLimit: " + used_count.edition_limit.to_s
										print "feature Component Detail UsedCount Total: " + used_count.total.to_s
									end
								end
								print "feature FeatureLabel : " + feature.feature_label.to_s
							end
						end
					elsif response_handler.is_a? ZOHOCRMSDK::Features::APIException
						exception = response_handler
						print "status: " + exception.status.value.to_s
						print "code: " + exception.code.value.to_s
						print "details: ".to_s
						exception.details.each do |k, v|
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
				get_data_enrichment
			rescue Exception => e
				raise e
			end
		end
end
GetDataEnrichment.initialize_and_call