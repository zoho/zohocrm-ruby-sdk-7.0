require 'csv'

require_relative 'token_store'
require_relative '../../../crm/api/util/constants'

module ZOHOCRMSDK
  module Store
    # This class stores the user token details to the file.
    class FileStore < TokenStore
      attr_accessor :file_path

      # Creates an FileStore class instance with the specified parameters.
      # @param filePath A String containing the absolute file path to store tokens.
      # @raise Exception
      def initialize(file_path)
        @file_path = file_path
        @headers = [Constants::ID, Constants::USER_NAME, Constants::CLIENT_ID, Constants::CLIENT_SECRET, Constants::REFRESH_TOKEN, Constants::ACCESS_TOKEN, Constants::GRANT_TOKEN, Constants::EXPIRY_TIME, Constants::REDIRECT_URL, Constants::API_DOMAIN]
        is_create =  false

        if  (File.exist?(@file_path) && CSV.read(@file_path).empty?) || (!File.exist?@file_path)
          File.new(@file_path, 'w')
          @csv_file = CSV.open(@file_path, 'a', write_headers: true)
          @csv_file << @headers
          @csv_file.close
          is_create = true
        end

        unless is_create
          all_contents = CSV.read(@file_path)
          headers = all_contents[0]
          if !headers.nil? && headers.length == 9
            all_contents = all_contents.map { |arr| arr + [nil] }
            all_contents[0] = @headers
            CSV.open(file_path, 'w') do |csv|
              all_contents.each do |row|
                csv << row
              end
            end
          end
        end
        # @csv_file = CSV.open(@file_path, 'a')
      end

      def find_token(token)
        return token unless token.is_a? Authenticator::OAuthToken

        file_contents = CSV.read(@file_path)

        is_row_present = false

        oauth_token = token

        file_contents.each do |row|
          if row.length > 1
            is_row_present = check_condition(oauth_token, row)
            if is_row_present
              set_merge_data(oauth_token, row)
              return oauth_token
            end
          end
        end
        return nil unless is_row_present
      rescue StandardError => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKEN_FILE_ERROR, nil, e)
        token
      end

      def get_tokens
        tokens = []
        file_contents = CSV.table(@file_path)
        file_contents.each do |row|
          unless row == file_contents.headers
            oauth_token = Authenticator::OAuthToken.initialize
            set_merge_data(oauth_token, row)
            tokens.push(oauth_token)
          end
        end
        tokens
      rescue StandardError => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKENS_FILE_ERROR, nil, e)
      end

      def save_token(token)
        if token.is_a? Authenticator::OAuthToken

          is_row_present = false

          oauth_token = token

          all_contents = CSV.table(@file_path)

          all_contents.each do |row|
            if row.length > 1
              if !oauth_token.id.nil?
                id = get_data(row[0].to_s)
                if !id.nil? && !oauth_token.id.nil? && id == oauth_token.id
                  is_row_present = true
                end
              else
                is_row_present = check_condition(oauth_token, row)
              end
              if is_row_present
                set_merge_data(oauth_token, row)
                target_index = all_contents.find_index(row)
                if !target_index.nil?
                  all_contents[target_index] = set_token(oauth_token)
                end
                break
              end
            else
              target_index = all_contents.find_index(row)
              if !target_index.nil?
                all_contents.delete_at(target_index)
              end
            end
          end

          unless is_row_present
            if !oauth_token.id.nil? || !oauth_token.user_signature.nil?
              if oauth_token.refresh_token.nil? && oauth_token.grant_token.nil? && oauth_token.access_token.nil?
                raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKEN_FILE_ERROR1, nil, nil)
              end
            end
            if oauth_token.id.nil?
              new_id = generate_id(all_contents)
              oauth_token.id = new_id
            end
            all_contents.push(set_token(oauth_token))
          end
          File.open(@file_path, 'w') do |f|
            f.write(all_contents.to_csv)
          end
        end
      rescue StandardError => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::SAVE_TOKEN_FILE_ERROR, nil, e)
      end

      def delete_token(id)

        table = CSV.table(@file_path)

        table.delete_if do |row|
          unless row == table.headers
            !get_data(row[0]).nil? and get_data(row[0]) == id
          end
        end

        File.open(@file_path, 'w') do |f|
          f.write(table.to_csv)
        end
      rescue StandardError => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::DELETE_TOKEN_FILE_ERROR, nil, e)
      end

      def delete_tokens
        table = CSV.table(@file_path)

        table.delete_if do |row|
          true unless row == table.headers
        end

        File.open(@file_path, 'w') do |f|
          f.write(table.to_csv)
        end
      rescue StandardError => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::DELETE_TOKENS_FILE_ERROR, nil, e)
      end

      def find_token_by_id(id)
        is_row_present = false

        oauth_token = Authenticator::OAuthToken.initialize

        file_contents = CSV.read(@file_path)

        file_contents.each do |row|

          if row[0] == id

            is_row_present = true

            set_merge_data(oauth_token, row)

            return oauth_token
          end
        end
        if !is_row_present
          raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKEN_BY_ID_FILE_ERROR, nil, nil)
        end
      nil
      rescue StandardError => e
        raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKEN_BY_ID_FILE_ERROR, nil, e)
      end


      def set_token(oauth_token)
        data = []
        data.push(oauth_token.id)
        data.push(!oauth_token.user_signature.nil? ? oauth_token.user_signature.name : nil)
        data.push(oauth_token.client_id)
        data.push(oauth_token.client_secret)
        data.push(oauth_token.refresh_token)
        data.push(oauth_token.access_token)
        data.push(oauth_token.grant_token)
        data.push(oauth_token.expires_in)
        data.push(oauth_token.redirect_url)
        data.push(oauth_token.api_domain)
        data
      end

      def generate_id(all_contents)
        max_value = 0

        if !all_contents.nil?
          all_contents.each do |row|
            if !row.nil? && !row[0].nil? && (row[0].to_s).length > 0
              if max_value < row[0].to_i
                max_value = row[0].to_i
              end
            end
          end
        end
        (max_value + 1).to_s
      end
      
      def set_merge_data(oauth_token, next_record)
        oauth_token.id = get_data(next_record[0]) if oauth_token.id.nil? || oauth_token.id == ""
        if oauth_token.user_signature.nil?
          name = get_data(next_record[1])
          oauth_token.user_signature = UserSignature.new(name) unless name.nil?
        end
        oauth_token.client_id = get_data(next_record[2]) if oauth_token.client_id.nil?
        oauth_token.client_secret = get_data(next_record[3]) if oauth_token.client_secret.nil?
        oauth_token.refresh_token = get_data(next_record[4]) if oauth_token.refresh_token.nil?
        oauth_token.access_token = get_data(next_record[5]) if oauth_token.access_token.nil?
        oauth_token.grant_token = get_data(next_record[6]) if oauth_token.grant_token.nil?
        if oauth_token.expires_in.nil?
          expires_in = get_data(next_record[7])
          oauth_token.expires_in = expires_in.to_s unless expires_in.nil?
        end
        oauth_token.redirect_url = get_data(next_record[8]) if oauth_token.redirect_url.nil?
        oauth_token.api_domain = get_data(next_record[9]) if oauth_token.api_domain.nil?
      end

      def get_data(value)
        value= value.to_s
        !value.nil? && !value.empty? && value.length > 0 ? value : nil
      end

      def check_condition(oauth_token, next_record)
        is_row_present = false
        if !oauth_token.user_signature.nil?
          name = oauth_token.user_signature.name
          user_name = get_data(next_record[1])
          if !name.nil? && name.length > 0 && !user_name.nil? && user_name.length > 0 && name==user_name
            is_row_present = true
          end
        elsif !oauth_token.access_token.nil? && are_all_objects_null(oauth_token.client_id, oauth_token.client_secret)
          access_token = get_data(next_record[5])
          if !access_token.nil? && access_token.length > 0 && oauth_token.access_token.length > 0 && oauth_token.access_token == access_token
            is_row_present = true
          end
        elsif (!oauth_token.refresh_token.nil? || !oauth_token.grant_token.nil?) && !oauth_token.client_id.nil? && !oauth_token.client_secret.nil?
          grant_token = get_data(next_record[6])
          refresh_token = get_data(next_record[4])
          if !grant_token.nil? && grant_token.length > 0 && !oauth_token.grant_token.nil? && oauth_token.grant_token.length > 0 && oauth_token.grant_token == grant_token
            is_row_present = true
          elsif !refresh_token.nil? && refresh_token.length > 0 && !oauth_token.refresh_token.nil? && oauth_token.refresh_token.length > 0 && oauth_token.refresh_token == refresh_token
            is_row_present = true
          end
        end
        is_row_present
      end

      def are_all_objects_null(*objects)
        objects.all?(&:nil?)
      end
    end
  end
end