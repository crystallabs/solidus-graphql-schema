require 'spec_helper'

describe 'Types' do
  describe 'Mutation' do
    #let!(:mutation) {create(:mutation)}

    # @graphql checkoutAttributesUpdateV2 Updates the attributes of a checkout.
    # @param checkout_id [Types::ID!]
    # @param input [Inputs::CheckoutAttributesUpdateV2!]
    # @return [Payloads::CheckoutAttributesUpdateV2]
    #it 'checkout_attributes_update_v2' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutAttributesUpdateV2(checkout_id:, input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutAttributesUpdateV2']).to eq mutation.checkout_attributes_update_v2
    #end

    # @graphql checkoutCompleteFree
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutCompleteFree]
    #it 'checkout_complete_free' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCompleteFree(checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCompleteFree']).to eq mutation.checkout_complete_free
    #end

    # @graphql checkoutCompleteWithCreditCardV2 Completes a checkout using a credit card token from Solidus's Vault.
    # @param checkout_id [Types::ID!]
    # @param payment [Inputs::CreditCardPaymentV2!]
    # @return [Payloads::CheckoutCompleteWithCreditCardV2]
    #it 'checkout_complete_with_credit_card_v2' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCompleteWithCreditCardV2(checkout_id:, payment:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCompleteWithCreditCardV2']).to eq mutation.checkout_complete_with_credit_card_v2
    #end

    # @graphql checkoutCompleteWithTokenizedPaymentV2 Completes a checkout with a tokenized payment.
    # @param checkout_id [Types::ID!]
    # @param payment [Inputs::TokenizedPaymentV2!]
    # @return [Payloads::CheckoutCompleteWithTokenizedPaymentV2]
    #it 'checkout_complete_with_tokenized_payment_v2' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCompleteWithTokenizedPaymentV2(checkout_id:, payment:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCompleteWithTokenizedPaymentV2']).to eq mutation.checkout_complete_with_tokenized_payment_v2
    #end

    # @graphql checkoutCreate Creates a new checkout.
    # @param input [Inputs::CheckoutCreate!]
    # @return [Payloads::CheckoutCreate]
    #it 'checkout_create' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCreate(input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCreate']).to eq mutation.checkout_create
    #end

    # @graphql checkoutCustomerAssociateV2 Associates a customer to the checkout.
    # @param checkout_id [Types::ID!]
    # @param customer_access_token [Types::String!]
    # @return [Payloads::CheckoutCustomerAssociateV2]
    #it 'checkout_customer_associate_v2' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCustomerAssociateV2(checkout_id:, customer_access_token:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCustomerAssociateV2']).to eq mutation.checkout_customer_associate_v2
    #end

    # @graphql checkoutCustomerDisassociate Disassociates the current checkout customer from the checkout.
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutCustomerDisassociate]
    #it 'checkout_customer_disassociate' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCustomerDisassociate(checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCustomerDisassociate']).to eq mutation.checkout_customer_disassociate
    #end

    # @graphql checkoutDiscountCodeApply Applies a discount to an existing checkout using a discount code.
    # @param discount_code [Types::String!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutDiscountCodeApply]
    #it 'checkout_discount_code_apply' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutDiscountCodeApply(discount_code:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutDiscountCodeApply']).to eq mutation.checkout_discount_code_apply
    #end

    # @graphql checkoutDiscountCodeRemove Removes the applied discount from an existing checkout.
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutDiscountCodeRemove]
    #it 'checkout_discount_code_remove' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutDiscountCodeRemove(checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutDiscountCodeRemove']).to eq mutation.checkout_discount_code_remove
    #end

    # @graphql checkoutEmailUpdate Updates the email on an existing checkout.
    # @param checkout_id [Types::ID!]
    # @param email [Types::String!]
    # @return [Payloads::CheckoutEmailUpdate]
    #it 'checkout_email_update' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutEmailUpdate(checkout_id:, email:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutEmailUpdate']).to eq mutation.checkout_email_update
    #end

    # @graphql checkoutGiftCardRemove Removes an applied gift card from the checkout.
    # @param applied_gift_card_id [Types::ID!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutGiftCardRemove]
    #it 'checkout_gift_card_remove' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutGiftCardRemove(applied_gift_card_id:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutGiftCardRemove']).to eq mutation.checkout_gift_card_remove
    #end

    # @graphql checkoutGiftCardsAppend Appends gift cards to an existing checkout.
    # @param gift_card_codes [[Types::String!]!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutGiftCardsAppend]
    #it 'checkout_gift_cards_append' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutGiftCardsAppend(gift_card_codes:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutGiftCardsAppend']).to eq mutation.checkout_gift_cards_append
    #end

    # @graphql checkoutLineItemsAdd Adds a list of line items to a checkout.
    # @param line_items [[Inputs::CheckoutLineItem!]!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutLineItemsAdd]
    #it 'checkout_line_items_add' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutLineItemsAdd(line_items:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutLineItemsAdd']).to eq mutation.checkout_line_items_add
    #end

    # @graphql checkoutLineItemsRemove Removes line items from an existing checkout
    # @param checkout_id [Types::ID!]
    # @param line_item_ids [[Types::ID!]!]
    # @return [Payloads::CheckoutLineItemsRemove]
    #it 'checkout_line_items_remove' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutLineItemsRemove(checkout_id:, line_item_ids:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutLineItemsRemove']).to eq mutation.checkout_line_items_remove
    #end

    # @graphql checkoutLineItemsUpdate Updates line items on a checkout.
    # @param checkout_id [Types::ID!]
    # @param line_items [[Inputs::CheckoutLineItemUpdate!]!]
    # @return [Payloads::CheckoutLineItemsUpdate]
    #it 'checkout_line_items_update' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutLineItemsUpdate(checkout_id:, line_items:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutLineItemsUpdate']).to eq mutation.checkout_line_items_update
    #end

    # @graphql checkoutShippingAddressUpdate Updates the shipping address of an existing checkout.
    # @param shipping_address [Inputs::MailingAddress!]
    # @param checkout_id [Types::ID!]
    # @return [Payloads::CheckoutShippingAddressUpdate]
    #it 'checkout_shipping_address_update' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutShippingAddressUpdate(shipping_address:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutShippingAddressUpdate']).to eq mutation.checkout_shipping_address_update
    #end

    # @graphql checkoutShippingLineUpdate Updates the shipping lines on an existing checkout.
    # @param checkout_id [Types::ID!]
    # @param shipping_rate_handle [Types::String!]
    # @return [Payloads::CheckoutShippingLineUpdate]
    #it 'checkout_shipping_line_update' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutShippingLineUpdate(checkout_id:, shipping_rate_handle:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutShippingLineUpdate']).to eq mutation.checkout_shipping_line_update
    #end

    # @graphql customerAccessTokenCreate Creates a customer access token. The customer access token is required to modify the customer object in any way. 
    # @param input [Inputs::CustomerAccessTokenCreate!]
    # @return [Payloads::CustomerAccessTokenCreate]
    #it 'customer_access_token_create' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAccessTokenCreate(input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAccessTokenCreate']).to eq mutation.customer_access_token_create
    #end

    # @graphql customerAccessTokenDelete Permanently destroys a customer access token.
    # @param customer_access_token [Types::String!]
    # @return [Payloads::CustomerAccessTokenDelete]
    #it 'customer_access_token_delete' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAccessTokenDelete(customer_access_token:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAccessTokenDelete']).to eq mutation.customer_access_token_delete
    #end

    # @graphql customerAccessTokenRenew Renews a customer access token. Access token renewal must happen *before* a token expires. If a token has already expired, a new one should be created instead via `customerAccessTokenCreate`. 
    # @param customer_access_token [Types::String!]
    # @return [Payloads::CustomerAccessTokenRenew]
    #it 'customer_access_token_renew' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAccessTokenRenew(customer_access_token:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAccessTokenRenew']).to eq mutation.customer_access_token_renew
    #end

    # @graphql customerActivate Activates a customer.
    # @param id [Types::ID!]
    # @param input [Inputs::CustomerActivate!]
    # @return [Payloads::CustomerActivate]
    #it 'customer_activate' do
    #  query = <<-GRAPHQL
    #    { mutation { customerActivate(id:, input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerActivate']).to eq mutation.customer_activate
    #end

    # @graphql customerAddressCreate Creates a new address for a customer.
    # @param customer_access_token [Types::String!]
    # @param address [Inputs::MailingAddress!]
    # @return [Payloads::CustomerAddressCreate]
    #it 'customer_address_create' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAddressCreate(customer_access_token:, address:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAddressCreate']).to eq mutation.customer_address_create
    #end

    # @graphql customerAddressDelete Permanently deletes the address of an existing customer.
    # @param id [Types::ID!]
    # @param customer_access_token [Types::String!]
    # @return [Payloads::CustomerAddressDelete]
    #it 'customer_address_delete' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAddressDelete(id:, customer_access_token:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAddressDelete']).to eq mutation.customer_address_delete
    #end

    # @graphql customerAddressUpdate Updates the address of an existing customer.
    # @param customer_access_token [Types::String!]
    # @param id [Types::ID!]
    # @param address [Inputs::MailingAddress!]
    # @return [Payloads::CustomerAddressUpdate]
    #it 'customer_address_update' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAddressUpdate(customer_access_token:, id:, address:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAddressUpdate']).to eq mutation.customer_address_update
    #end

    # @graphql customerCreate Creates a new customer.
    # @param input [Inputs::CustomerCreate!]
    # @return [Payloads::CustomerCreate]
    #it 'customer_create' do
    #  query = <<-GRAPHQL
    #    { mutation { customerCreate(input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerCreate']).to eq mutation.customer_create
    #end

    # @graphql customerDefaultAddressUpdate Updates the default address of an existing customer.
    # @param customer_access_token [Types::String!]
    # @param address_id [Types::ID!]
    # @return [Payloads::CustomerDefaultAddressUpdate]
    #it 'customer_default_address_update' do
    #  query = <<-GRAPHQL
    #    { mutation { customerDefaultAddressUpdate(customer_access_token:, address_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerDefaultAddressUpdate']).to eq mutation.customer_default_address_update
    #end

    # @graphql customerRecover Sends a reset password email to the customer, as the first step in the reset password process.
    # @param email [Types::String!]
    # @return [Payloads::CustomerRecover]
    #it 'customer_recover' do
    #  query = <<-GRAPHQL
    #    { mutation { customerRecover(email:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerRecover']).to eq mutation.customer_recover
    #end

    # @graphql customerReset Resets a customer’s password with a token received from `CustomerRecover`.
    # @param id [Types::ID!]
    # @param input [Inputs::CustomerReset!]
    # @return [Payloads::CustomerReset]
    #it 'customer_reset' do
    #  query = <<-GRAPHQL
    #    { mutation { customerReset(id:, input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerReset']).to eq mutation.customer_reset
    #end

    # @graphql customerResetByUrl Resets a customer’s password with the reset password url received from `CustomerRecover`.
    # @param reset_url [Types::URL!]
    # @param password [Types::String!]
    # @return [Payloads::CustomerResetByUrl]
    #it 'customer_reset_by_url' do
    #  query = <<-GRAPHQL
    #    { mutation { customerResetByUrl(reset_url:, password:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerResetByUrl']).to eq mutation.customer_reset_by_url
    #end

    # @graphql customerUpdate Updates an existing customer.
    # @param customer_access_token [Types::String!]
    # @param customer [Inputs::CustomerUpdate!]
    # @return [Payloads::CustomerUpdate]
    #it 'customer_update' do
    #  query = <<-GRAPHQL
    #    { mutation { customerUpdate(customer_access_token:, customer:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerUpdate']).to eq mutation.customer_update
    #end

  end
end
