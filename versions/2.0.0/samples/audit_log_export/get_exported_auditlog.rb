require "ZOHOCRMSDK7_0"

class GetExportedAuditlog
		def self.get_exported_auditlog(id)
			audit_log_export_operations =  ZOHOCRMSDK::AuditLogExport::AuditLogExportOperations.new
			response = audit_log_export_operations.get_exported_auditlog(id)
			if response != nil
				print "status Code: " + response.status_code.to_s
				if response.status_code == 204
					print "no Content".to_s
					return
				end
				if response.is_expected
					response_handler = response.data_object
					if response_handler.is_a? ZOHOCRMSDK::AuditLogExport::ResponseWrapper
						response_wrapper = response_handler
						audit_log_export= response_wrapper.audit_log_export
						if audit_log_export != nil
							audit_log_export.each do |audit_log_export1|
								criteria = audit_log_export1.criteria
								if criteria != nil
									print_criteria(criteria)
								end
								print "audit_log_export Id : " + audit_log_export1.id.to_s
								print "audit_log_export Status : " + audit_log_export1.status.to_s
								created_by = audit_log_export1.created_by
								if created_by != nil
									print "audit_log_export User Id : " + created_by.id.to_s
									print "audit_log_export User Id : " + created_by.name.to_s
								end
								download_links= audit_log_export1.download_links
								unless download_links.nil?
									download_links.each do |link|
										print "audit_log_export DownloadLink : " + link.to_s
									end
									print "audit_log_export JobStartTime : " + audit_log_export1.job_start_time.to_s
									print "audit_log_export JobEndTime : " + audit_log_export1.job_end_time.to_s
									print "audit_log_export ExpiryDate : " + audit_log_export1.expiry_date.to_s
								end
							end
						end
					elsif response_handler.is_a? ZOHOCRMSDK::AuditLogExport::APIException
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
		
		def self.print_criteria(criteria)
			if criteria.comparator != nil
				print "exported_auditlogs Criteria Comparator: " + criteria.comparator.to_s
			end
			if criteria.value != nil
				print "exported_auditlogs Criteria Value: " + criteria.value.to_s.to_s
			end
			if criteria.field != nil
				print "exported_auditlogs Criteria field name: " + criteria.field.api_name.to_s
			end
			criteria_group= criteria.group
			if criteria_group != nil
				criteria_group.each do |criteria1|
					print_criteria(criteria1)
				end
			end
			if criteria.group_operator != nil
				print "exported_auditlogs Criteria Group Operator: " + criteria.group_operator.to_s
			end
		end
	def self.initialize_and_call
			begin
				environment = ZOHOCRMSDK::DC::USDataCenter::PRODUCTION
				token = ZOHOCRMSDK::Authenticator::OAuthToken.new(client_id:"client_id", client_secret:"client_secret", grant_token: "grant_token")
				ZOHOCRMSDK::Initializer.initialize(environment: environment, token: token)
				id = 727225000000541001
				get_exported_auditlog(id)
			rescue Exception => e
				raise e
			end
	end
end
GetExportedAuditlog.initialize_and_call