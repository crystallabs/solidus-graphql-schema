# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Mutation' do
    let!(:mutation) { create(:mutation) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # checkoutAttributesUpdateV2: Updates the attributes of a checkout.
    # @param checkout_id [Types::ID!]
    # @param input [Inputs::CheckoutAttributesUpdateV2!]
    # @return [Payloads::CheckoutAttributesUpdateV2]
    describe 'checkoutAttributesUpdateV2' do
      let!(:query) { '{ mutation { checkoutAttributesUpdateV2 } }' }
      let!(:result) { { data: { mutation: { checkoutAttributesUpdateV2: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutCompleteFree
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutCompleteFree]
    describe 'checkoutCompleteFree' do
      let!(:query) { '{ mutation { checkoutCompleteFree } }' }
      let!(:result) { { data: { mutation: { checkoutCompleteFree: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutCompleteWithCreditCardV2: Completes a checkout using a credit card token from Solidus's Vault.
    # @param checkout_id [Types::ID!]
    # @param payment [Inputs::CreditCardPaymentV2!]
    # @return [Payloads::CheckoutCompleteWithCreditCardV2]
    describe 'checkoutCompleteWithCreditCardV2' do
      let!(:query) { '{ mutation { checkoutCompleteWithCreditCardV2 } }' }
      let!(:result) { { data: { mutation: { checkoutCompleteWithCreditCardV2: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutCompleteWithTokenizedPaymentV2: Completes a checkout with a tokenized payment.
    # @param checkout_id [Types::ID!]
    # @param payment [Inputs::TokenizedPaymentV2!]
    # @return [Payloads::CheckoutCompleteWithTokenizedPaymentV2]
    describe 'checkoutCompleteWithTokenizedPaymentV2' do
      let!(:query) { '{ mutation { checkoutCompleteWithTokenizedPaymentV2 } }' }
      let!(:result) { { data: { mutation: { checkoutCompleteWithTokenizedPaymentV2: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutCreate: Creates a new checkout.
    # @param input [Inputs::CheckoutCreate!]
    # @return [Payloads::CheckoutCreate]
    describe 'checkoutCreate' do
      let!(:query) { '{ mutation { checkoutCreate } }' }
      let!(:result) { { data: { mutation: { checkoutCreate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutCustomerAssociateV2: Associates a customer to the checkout.
    # @param checkout_id [Types::ID!]
    # @param customer_access_token [Types::String!]
    # @return [Payloads::CheckoutCustomerAssociateV2]
    describe 'checkoutCustomerAssociateV2' do
      let!(:query) { '{ mutation { checkoutCustomerAssociateV2 } }' }
      let!(:result) { { data: { mutation: { checkoutCustomerAssociateV2: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutCustomerDisassociate: Disassociates the current checkout customer from the checkout.
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutCustomerDisassociate]
    describe 'checkoutCustomerDisassociate' do
      let!(:query) { '{ mutation { checkoutCustomerDisassociate } }' }
      let!(:result) { { data: { mutation: { checkoutCustomerDisassociate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutDiscountCodeApply: Applies a discount to an existing checkout using a discount code.
    # @param discount_code [Types::String!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutDiscountCodeApply]
    describe 'checkoutDiscountCodeApply' do
      let!(:query) { '{ mutation { checkoutDiscountCodeApply } }' }
      let!(:result) { { data: { mutation: { checkoutDiscountCodeApply: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutDiscountCodeRemove: Removes the applied discount from an existing checkout.
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutDiscountCodeRemove]
    describe 'checkoutDiscountCodeRemove' do
      let!(:query) { '{ mutation { checkoutDiscountCodeRemove } }' }
      let!(:result) { { data: { mutation: { checkoutDiscountCodeRemove: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutEmailUpdate: Updates the email on an existing checkout.
    # @param checkout_id [Types::ID!]
    # @param email [Types::String!]
    # @return [Payloads::CheckoutEmailUpdate]
    describe 'checkoutEmailUpdate' do
      let!(:query) { '{ mutation { checkoutEmailUpdate } }' }
      let!(:result) { { data: { mutation: { checkoutEmailUpdate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutGiftCardRemove: Removes an applied gift card from the checkout.
    # @param applied_gift_card_id [Types::ID!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutGiftCardRemove]
    describe 'checkoutGiftCardRemove' do
      let!(:query) { '{ mutation { checkoutGiftCardRemove } }' }
      let!(:result) { { data: { mutation: { checkoutGiftCardRemove: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutGiftCardsAppend: Appends gift cards to an existing checkout.
    # @param gift_card_codes [[Types::String!]!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutGiftCardsAppend]
    describe 'checkoutGiftCardsAppend' do
      let!(:query) { '{ mutation { checkoutGiftCardsAppend } }' }
      let!(:result) { { data: { mutation: { checkoutGiftCardsAppend: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutLineItemsAdd: Adds a list of line items to a checkout.
    # @param line_items [[Inputs::CheckoutLineItem!]!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutLineItemsAdd]
    describe 'checkoutLineItemsAdd' do
      let!(:query) { '{ mutation { checkoutLineItemsAdd } }' }
      let!(:result) { { data: { mutation: { checkoutLineItemsAdd: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutLineItemsRemove: Removes line items from an existing checkout
    # @param checkout_id [Types::ID!]
    # @param line_item_ids [[Types::ID!]!]
    # @return [Payloads::CheckoutLineItemsRemove]
    describe 'checkoutLineItemsRemove' do
      let!(:query) { '{ mutation { checkoutLineItemsRemove } }' }
      let!(:result) { { data: { mutation: { checkoutLineItemsRemove: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutLineItemsUpdate: Updates line items on a checkout.
    # @param checkout_id [Types::ID!]
    # @param line_items [[Inputs::CheckoutLineItemUpdate!]!]
    # @return [Payloads::CheckoutLineItemsUpdate]
    describe 'checkoutLineItemsUpdate' do
      let!(:query) { '{ mutation { checkoutLineItemsUpdate } }' }
      let!(:result) { { data: { mutation: { checkoutLineItemsUpdate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutShippingAddressUpdate: Updates the shipping address of an existing checkout.
    # @param shipping_address [Inputs::MailingAddress!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutShippingAddressUpdate]
    describe 'checkoutShippingAddressUpdate' do
      let!(:query) { '{ mutation { checkoutShippingAddressUpdate } }' }
      let!(:result) { { data: { mutation: { checkoutShippingAddressUpdate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkoutShippingLineUpdate: Updates the shipping lines on an existing checkout.
    # @param checkout_id [Types::ID!]
    # @param shipping_rate_handle [Types::String!]
    # @return [Payloads::CheckoutShippingLineUpdate]
    describe 'checkoutShippingLineUpdate' do
      let!(:query) { '{ mutation { checkoutShippingLineUpdate } }' }
      let!(:result) { { data: { mutation: { checkoutShippingLineUpdate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerAccessTokenCreate: Creates a customer access token. The customer access token is required to modify the customer object in any way. 
    # @param input [Inputs::CustomerAccessTokenCreate!]
    # @return [Payloads::CustomerAccessTokenCreate]
    describe 'customerAccessTokenCreate' do
      let!(:query) { '{ mutation { customerAccessTokenCreate } }' }
      let!(:result) { { data: { mutation: { customerAccessTokenCreate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerAccessTokenDelete: Permanently destroys a customer access token.
    # @param customer_access_token [Types::String!]
    # @return [Payloads::CustomerAccessTokenDelete]
    describe 'customerAccessTokenDelete' do
      let!(:query) { '{ mutation { customerAccessTokenDelete } }' }
      let!(:result) { { data: { mutation: { customerAccessTokenDelete: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerAccessTokenRenew: Renews a customer access token. Access token renewal must happen *before* a token expires. If a token has already expired, a new one should be created instead via `customerAccessTokenCreate`. 
    # @param customer_access_token [Types::String!]
    # @return [Payloads::CustomerAccessTokenRenew]
    describe 'customerAccessTokenRenew' do
      let!(:query) { '{ mutation { customerAccessTokenRenew } }' }
      let!(:result) { { data: { mutation: { customerAccessTokenRenew: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerActivate: Activates a customer.
    # @param id [Types::ID!]
    # @param input [Inputs::CustomerActivate!]
    # @return [Payloads::CustomerActivate]
    describe 'customerActivate' do
      let!(:query) { '{ mutation { customerActivate } }' }
      let!(:result) { { data: { mutation: { customerActivate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerAddressCreate: Creates a new address for a customer.
    # @param customer_access_token [Types::String!]
    # @param address [Inputs::MailingAddress!]
    # @return [Payloads::CustomerAddressCreate]
    describe 'customerAddressCreate' do
      let!(:query) { '{ mutation { customerAddressCreate } }' }
      let!(:result) { { data: { mutation: { customerAddressCreate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerAddressDelete: Permanently deletes the address of an existing customer.
    # @param id [Types::ID!]
    # @param customer_access_token [Types::String!]
    # @return [Payloads::CustomerAddressDelete]
    describe 'customerAddressDelete' do
      let!(:query) { '{ mutation { customerAddressDelete } }' }
      let!(:result) { { data: { mutation: { customerAddressDelete: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerAddressUpdate: Updates the address of an existing customer.
    # @param customer_access_token [Types::String!]
    # @param id [Types::ID!]
    # @param address [Inputs::MailingAddress!]
    # @return [Payloads::CustomerAddressUpdate]
    describe 'customerAddressUpdate' do
      let!(:query) { '{ mutation { customerAddressUpdate } }' }
      let!(:result) { { data: { mutation: { customerAddressUpdate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerCreate: Creates a new customer.
    # @param input [Inputs::CustomerCreate!]
    # @return [Payloads::CustomerCreate]
    describe 'customerCreate' do
      let!(:query) { '{ mutation { customerCreate } }' }
      let!(:result) { { data: { mutation: { customerCreate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerDefaultAddressUpdate: Updates the default address of an existing customer.
    # @param customer_access_token [Types::String!]
    # @param address_id [Types::ID!]
    # @return [Payloads::CustomerDefaultAddressUpdate]
    describe 'customerDefaultAddressUpdate' do
      let!(:query) { '{ mutation { customerDefaultAddressUpdate } }' }
      let!(:result) { { data: { mutation: { customerDefaultAddressUpdate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerRecover: Sends a reset password email to the customer, as the first step in the reset password process.
    # @param email [Types::String!]
    # @return [Payloads::CustomerRecover]
    describe 'customerRecover' do
      let!(:query) { '{ mutation { customerRecover } }' }
      let!(:result) { { data: { mutation: { customerRecover: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerReset: Resets a customer’s password with a token received from `CustomerRecover`.
    # @param id [Types::ID!]
    # @param input [Inputs::CustomerReset!]
    # @return [Payloads::CustomerReset]
    describe 'customerReset' do
      let!(:query) { '{ mutation { customerReset } }' }
      let!(:result) { { data: { mutation: { customerReset: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerResetByUrl: Resets a customer’s password with the reset password url received from `CustomerRecover`.
    # @param reset_url [Types::URL!]
    # @param password [Types::String!]
    # @return [Payloads::CustomerResetByUrl]
    describe 'customerResetByUrl' do
      let!(:query) { '{ mutation { customerResetByUrl } }' }
      let!(:result) { { data: { mutation: { customerResetByUrl: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerUpdate: Updates an existing customer.
    # @param customer_access_token [Types::String!]
    # @param customer [Inputs::CustomerUpdate!]
    # @return [Payloads::CustomerUpdate]
    describe 'customerUpdate' do
      let!(:query) { '{ mutation { customerUpdate } }' }
      let!(:result) { { data: { mutation: { customerUpdate: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
