require 'spec_helper'

describe 'Types' do
  describe 'Mutation' do
    #let!(:mutation) {create(:mutation)}

    # Field: checkoutAttributesUpdateV2: Updates the attributes of a checkout.
    # Args: checkout_id : Types::ID!, input : Inputs::CheckoutAttributesUpdateV2!
    # Returns: Payloads::CheckoutAttributesUpdateV2
    #it 'checkout_attributes_update_v2' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutAttributesUpdateV2(checkout_id:, input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutAttributesUpdateV2']).to eq mutation.checkout_attributes_update_v2
    #end

    # Field: checkoutCompleteFree
    # Args: checkout_id : Types::ID!
    # Returns: Payloads::CheckoutCompleteFree
    #it 'checkout_complete_free' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCompleteFree(checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCompleteFree']).to eq mutation.checkout_complete_free
    #end

    # Field: checkoutCompleteWithCreditCardV2: Completes a checkout using a credit card token from Solidus's Vault.
    # Args: checkout_id : Types::ID!, payment : Inputs::CreditCardPaymentV2!
    # Returns: Payloads::CheckoutCompleteWithCreditCardV2
    #it 'checkout_complete_with_credit_card_v2' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCompleteWithCreditCardV2(checkout_id:, payment:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCompleteWithCreditCardV2']).to eq mutation.checkout_complete_with_credit_card_v2
    #end

    # Field: checkoutCompleteWithTokenizedPaymentV2: Completes a checkout with a tokenized payment.
    # Args: checkout_id : Types::ID!, payment : Inputs::TokenizedPaymentV2!
    # Returns: Payloads::CheckoutCompleteWithTokenizedPaymentV2
    #it 'checkout_complete_with_tokenized_payment_v2' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCompleteWithTokenizedPaymentV2(checkout_id:, payment:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCompleteWithTokenizedPaymentV2']).to eq mutation.checkout_complete_with_tokenized_payment_v2
    #end

    # Field: checkoutCreate: Creates a new checkout.
    # Args: input : Inputs::CheckoutCreate!
    # Returns: Payloads::CheckoutCreate
    #it 'checkout_create' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCreate(input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCreate']).to eq mutation.checkout_create
    #end

    # Field: checkoutCustomerAssociateV2: Associates a customer to the checkout.
    # Args: checkout_id : Types::ID!, customer_access_token : Types::String!
    # Returns: Payloads::CheckoutCustomerAssociateV2
    #it 'checkout_customer_associate_v2' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCustomerAssociateV2(checkout_id:, customer_access_token:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCustomerAssociateV2']).to eq mutation.checkout_customer_associate_v2
    #end

    # Field: checkoutCustomerDisassociate: Disassociates the current checkout customer from the checkout.
    # Args: checkout_id : Types::ID!
    # Returns: Payloads::CheckoutCustomerDisassociate
    #it 'checkout_customer_disassociate' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutCustomerDisassociate(checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutCustomerDisassociate']).to eq mutation.checkout_customer_disassociate
    #end

    # Field: checkoutDiscountCodeApply: Applies a discount to an existing checkout using a discount code.
    # Args: discount_code : Types::String!, checkout_id : Types::ID!
    # Returns: Payloads::CheckoutDiscountCodeApply
    #it 'checkout_discount_code_apply' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutDiscountCodeApply(discount_code:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutDiscountCodeApply']).to eq mutation.checkout_discount_code_apply
    #end

    # Field: checkoutDiscountCodeRemove: Removes the applied discount from an existing checkout.
    # Args: checkout_id : Types::ID!
    # Returns: Payloads::CheckoutDiscountCodeRemove
    #it 'checkout_discount_code_remove' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutDiscountCodeRemove(checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutDiscountCodeRemove']).to eq mutation.checkout_discount_code_remove
    #end

    # Field: checkoutEmailUpdate: Updates the email on an existing checkout.
    # Args: checkout_id : Types::ID!, email : Types::String!
    # Returns: Payloads::CheckoutEmailUpdate
    #it 'checkout_email_update' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutEmailUpdate(checkout_id:, email:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutEmailUpdate']).to eq mutation.checkout_email_update
    #end

    # Field: checkoutGiftCardRemove: Removes an applied gift card from the checkout.
    # Args: applied_gift_card_id : Types::ID!, checkout_id : Types::ID!
    # Returns: Payloads::CheckoutGiftCardRemove
    #it 'checkout_gift_card_remove' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutGiftCardRemove(applied_gift_card_id:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutGiftCardRemove']).to eq mutation.checkout_gift_card_remove
    #end

    # Field: checkoutGiftCardsAppend: Appends gift cards to an existing checkout.
    # Args: gift_card_codes : [Types::String!]!, checkout_id : Types::ID!
    # Returns: Payloads::CheckoutGiftCardsAppend
    #it 'checkout_gift_cards_append' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutGiftCardsAppend(gift_card_codes:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutGiftCardsAppend']).to eq mutation.checkout_gift_cards_append
    #end

    # Field: checkoutLineItemsAdd: Adds a list of line items to a checkout.
    # Args: line_items : [Inputs::CheckoutLineItem!]!, checkout_id : Types::ID!
    # Returns: Payloads::CheckoutLineItemsAdd
    #it 'checkout_line_items_add' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutLineItemsAdd(line_items:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutLineItemsAdd']).to eq mutation.checkout_line_items_add
    #end

    # Field: checkoutLineItemsRemove: Removes line items from an existing checkout
    # Args: checkout_id : Types::ID!, line_item_ids : [Types::ID!]!
    # Returns: Payloads::CheckoutLineItemsRemove
    #it 'checkout_line_items_remove' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutLineItemsRemove(checkout_id:, line_item_ids:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutLineItemsRemove']).to eq mutation.checkout_line_items_remove
    #end

    # Field: checkoutLineItemsUpdate: Updates line items on a checkout.
    # Args: checkout_id : Types::ID!, line_items : [Inputs::CheckoutLineItemUpdate!]!
    # Returns: Payloads::CheckoutLineItemsUpdate
    #it 'checkout_line_items_update' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutLineItemsUpdate(checkout_id:, line_items:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutLineItemsUpdate']).to eq mutation.checkout_line_items_update
    #end

    # Field: checkoutShippingAddressUpdate: Updates the shipping address of an existing checkout.
    # Args: shipping_address : Inputs::MailingAddress!, checkout_id : Types::ID!
    # Returns: Payloads::CheckoutShippingAddressUpdate
    #it 'checkout_shipping_address_update' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutShippingAddressUpdate(shipping_address:, checkout_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutShippingAddressUpdate']).to eq mutation.checkout_shipping_address_update
    #end

    # Field: checkoutShippingLineUpdate: Updates the shipping lines on an existing checkout.
    # Args: checkout_id : Types::ID!, shipping_rate_handle : Types::String!
    # Returns: Payloads::CheckoutShippingLineUpdate
    #it 'checkout_shipping_line_update' do
    #  query = <<-GRAPHQL
    #    { mutation { checkoutShippingLineUpdate(checkout_id:, shipping_rate_handle:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['checkoutShippingLineUpdate']).to eq mutation.checkout_shipping_line_update
    #end

    # Field: customerAccessTokenCreate: Creates a customer access token. The customer access token is required to modify the customer object in any way. 
    # Args: input : Inputs::CustomerAccessTokenCreate!
    # Returns: Payloads::CustomerAccessTokenCreate
    #it 'customer_access_token_create' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAccessTokenCreate(input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAccessTokenCreate']).to eq mutation.customer_access_token_create
    #end

    # Field: customerAccessTokenDelete: Permanently destroys a customer access token.
    # Args: customer_access_token : Types::String!
    # Returns: Payloads::CustomerAccessTokenDelete
    #it 'customer_access_token_delete' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAccessTokenDelete(customer_access_token:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAccessTokenDelete']).to eq mutation.customer_access_token_delete
    #end

    # Field: customerAccessTokenRenew: Renews a customer access token. Access token renewal must happen *before* a token expires. If a token has already expired, a new one should be created instead via `customerAccessTokenCreate`. 
    # Args: customer_access_token : Types::String!
    # Returns: Payloads::CustomerAccessTokenRenew
    #it 'customer_access_token_renew' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAccessTokenRenew(customer_access_token:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAccessTokenRenew']).to eq mutation.customer_access_token_renew
    #end

    # Field: customerActivate: Activates a customer.
    # Args: id : Types::ID!, input : Inputs::CustomerActivate!
    # Returns: Payloads::CustomerActivate
    #it 'customer_activate' do
    #  query = <<-GRAPHQL
    #    { mutation { customerActivate(id:, input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerActivate']).to eq mutation.customer_activate
    #end

    # Field: customerAddressCreate: Creates a new address for a customer.
    # Args: customer_access_token : Types::String!, address : Inputs::MailingAddress!
    # Returns: Payloads::CustomerAddressCreate
    #it 'customer_address_create' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAddressCreate(customer_access_token:, address:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAddressCreate']).to eq mutation.customer_address_create
    #end

    # Field: customerAddressDelete: Permanently deletes the address of an existing customer.
    # Args: id : Types::ID!, customer_access_token : Types::String!
    # Returns: Payloads::CustomerAddressDelete
    #it 'customer_address_delete' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAddressDelete(id:, customer_access_token:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAddressDelete']).to eq mutation.customer_address_delete
    #end

    # Field: customerAddressUpdate: Updates the address of an existing customer.
    # Args: customer_access_token : Types::String!, id : Types::ID!, address : Inputs::MailingAddress!
    # Returns: Payloads::CustomerAddressUpdate
    #it 'customer_address_update' do
    #  query = <<-GRAPHQL
    #    { mutation { customerAddressUpdate(customer_access_token:, id:, address:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerAddressUpdate']).to eq mutation.customer_address_update
    #end

    # Field: customerCreate: Creates a new customer.
    # Args: input : Inputs::CustomerCreate!
    # Returns: Payloads::CustomerCreate
    #it 'customer_create' do
    #  query = <<-GRAPHQL
    #    { mutation { customerCreate(input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerCreate']).to eq mutation.customer_create
    #end

    # Field: customerDefaultAddressUpdate: Updates the default address of an existing customer.
    # Args: customer_access_token : Types::String!, address_id : Types::ID!
    # Returns: Payloads::CustomerDefaultAddressUpdate
    #it 'customer_default_address_update' do
    #  query = <<-GRAPHQL
    #    { mutation { customerDefaultAddressUpdate(customer_access_token:, address_id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerDefaultAddressUpdate']).to eq mutation.customer_default_address_update
    #end

    # Field: customerRecover: Sends a reset password email to the customer, as the first step in the reset password process.
    # Args: email : Types::String!
    # Returns: Payloads::CustomerRecover
    #it 'customer_recover' do
    #  query = <<-GRAPHQL
    #    { mutation { customerRecover(email:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerRecover']).to eq mutation.customer_recover
    #end

    # Field: customerReset: Resets a customer’s password with a token received from `CustomerRecover`.
    # Args: id : Types::ID!, input : Inputs::CustomerReset!
    # Returns: Payloads::CustomerReset
    #it 'customer_reset' do
    #  query = <<-GRAPHQL
    #    { mutation { customerReset(id:, input:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerReset']).to eq mutation.customer_reset
    #end

    # Field: customerResetByUrl: Resets a customer’s password with the reset password url received from `CustomerRecover`.
    # Args: reset_url : Types::URL!, password : Types::String!
    # Returns: Payloads::CustomerResetByUrl
    #it 'customer_reset_by_url' do
    #  query = <<-GRAPHQL
    #    { mutation { customerResetByUrl(reset_url:, password:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mutation')
    #  expect(result['customerResetByUrl']).to eq mutation.customer_reset_by_url
    #end

    # Field: customerUpdate: Updates an existing customer.
    # Args: customer_access_token : Types::String!, customer : Inputs::CustomerUpdate!
    # Returns: Payloads::CustomerUpdate
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

