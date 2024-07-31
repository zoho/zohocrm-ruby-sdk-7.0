require_relative '../util/model'

module ZOHOCRMSDK
  module Layouts
    class ConvertMapping
      include Util::Model

      # Creates an instance of ConvertMapping
      def initialize
        @contacts = nil
        @deals = nil
        @accounts = nil
        @invoices = nil
        @salesorders = nil
        @key_modified = Hash.new
      end

        # The method to get the contacts
        # @return An instance of MinifiedLayout

      def contacts
        @contacts
      end

        # The method to set the value to contacts
        # @param contacts [MinifiedLayout] An instance of MinifiedLayout

      def contacts=(contacts)
        if contacts!=nil and !contacts.is_a? MinifiedLayout
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contacts EXPECTED TYPE: MinifiedLayout', nil, nil)
        end
        @contacts = contacts
        @key_modified['Contacts'] = 1
      end

        # The method to get the deals
        # @return An instance of DealLayoutMapping

      def deals
        @deals
      end

        # The method to set the value to deals
        # @param deals [DealLayoutMapping] An instance of DealLayoutMapping

      def deals=(deals)
        if deals!=nil and !deals.is_a? DealLayoutMapping
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deals EXPECTED TYPE: DealLayoutMapping', nil, nil)
        end
        @deals = deals
        @key_modified['Deals'] = 1
      end

        # The method to get the accounts
        # @return An instance of MinifiedLayout

      def accounts
        @accounts
      end

        # The method to set the value to accounts
        # @param accounts [MinifiedLayout] An instance of MinifiedLayout

      def accounts=(accounts)
        if accounts!=nil and !accounts.is_a? MinifiedLayout
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: accounts EXPECTED TYPE: MinifiedLayout', nil, nil)
        end
        @accounts = accounts
        @key_modified['Accounts'] = 1
      end

        # The method to get the invoices
        # @return An instance of MinifiedLayout

      def invoices
        @invoices
      end

        # The method to set the value to invoices
        # @param invoices [MinifiedLayout] An instance of MinifiedLayout

      def invoices=(invoices)
        if invoices!=nil and !invoices.is_a? MinifiedLayout
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: invoices EXPECTED TYPE: MinifiedLayout', nil, nil)
        end
        @invoices = invoices
        @key_modified['Invoices'] = 1
      end

        # The method to get the salesorders
        # @return An instance of MinifiedLayout

      def salesorders
        @salesorders
      end

        # The method to set the value to salesorders
        # @param salesorders [MinifiedLayout] An instance of MinifiedLayout

      def salesorders=(salesorders)
        if salesorders!=nil and !salesorders.is_a? MinifiedLayout
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: salesorders EXPECTED TYPE: MinifiedLayout', nil, nil)
        end
        @salesorders = salesorders
        @key_modified['SalesOrders'] = 1
      end

        # The method to check if the user has modified the given key
        # @param key [String] A String
        # @return A Integer value

      def is_key_modified(key)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if @key_modified.key?(key)
          return @key_modified[key]
        end

        nil
      end

        # The method to mark the given key as modified
        # @param key [String] A String
        # @param modification [Integer] A Integer

      def set_key_modified(key, modification)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if modification!=nil and !modification.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modification EXPECTED TYPE: Integer', nil, nil)
        end
        @key_modified[key] = modification
      end

    end
  end
end
