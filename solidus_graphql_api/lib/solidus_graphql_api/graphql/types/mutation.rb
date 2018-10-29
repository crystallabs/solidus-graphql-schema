module Spree::GraphQL::Types::Mutation


  # Field: checkoutAttributesUpdateV2: Updates the attributes of a checkout.
  # Args: checkout_id : Types::ID!, input : Inputs::CheckoutAttributesUpdateV2!
  # Returns: Payloads::CheckoutAttributesUpdateV2
  def checkout_attributes_update_v2(checkout_id:, input:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutCompleteFree
  # Args: checkout_id : Types::ID!
  # Returns: Payloads::CheckoutCompleteFree
  def checkout_complete_free(checkout_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutCompleteWithCreditCardV2: Completes a checkout using a credit card token from Solidus's Vault.
  # Args: checkout_id : Types::ID!, payment : Inputs::CreditCardPaymentV2!
  # Returns: Payloads::CheckoutCompleteWithCreditCardV2
  def checkout_complete_with_credit_card_v2(checkout_id:, payment:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutCompleteWithTokenizedPaymentV2: Completes a checkout with a tokenized payment.
  # Args: checkout_id : Types::ID!, payment : Inputs::TokenizedPaymentV2!
  # Returns: Payloads::CheckoutCompleteWithTokenizedPaymentV2
  def checkout_complete_with_tokenized_payment_v2(checkout_id:, payment:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutCreate: Creates a new checkout.
  # Args: input : Inputs::CheckoutCreate!
  # Returns: Payloads::CheckoutCreate
  def checkout_create(input:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutCustomerAssociateV2: Associates a customer to the checkout.
  # Args: checkout_id : Types::ID!, customer_access_token : Types::String!
  # Returns: Payloads::CheckoutCustomerAssociateV2
  def checkout_customer_associate_v2(checkout_id:, customer_access_token:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutCustomerDisassociate: Disassociates the current checkout customer from the checkout.
  # Args: checkout_id : Types::ID!
  # Returns: Payloads::CheckoutCustomerDisassociate
  def checkout_customer_disassociate(checkout_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutDiscountCodeApply: Applies a discount to an existing checkout using a discount code.
  # Args: discount_code : Types::String!, checkout_id : Types::ID!
  # Returns: Payloads::CheckoutDiscountCodeApply
  def checkout_discount_code_apply(discount_code:, checkout_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutDiscountCodeRemove: Removes the applied discount from an existing checkout.
  # Args: checkout_id : Types::ID!
  # Returns: Payloads::CheckoutDiscountCodeRemove
  def checkout_discount_code_remove(checkout_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutEmailUpdate: Updates the email on an existing checkout.
  # Args: checkout_id : Types::ID!, email : Types::String!
  # Returns: Payloads::CheckoutEmailUpdate
  def checkout_email_update(checkout_id:, email:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutGiftCardRemove: Removes an applied gift card from the checkout.
  # Args: applied_gift_card_id : Types::ID!, checkout_id : Types::ID!
  # Returns: Payloads::CheckoutGiftCardRemove
  def checkout_gift_card_remove(applied_gift_card_id:, checkout_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutGiftCardsAppend: Appends gift cards to an existing checkout.
  # Args: gift_card_codes : [Types::String!]!, checkout_id : Types::ID!
  # Returns: Payloads::CheckoutGiftCardsAppend
  def checkout_gift_cards_append(gift_card_codes:, checkout_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutLineItemsAdd: Adds a list of line items to a checkout.
  # Args: line_items : [Inputs::CheckoutLineItem!]!, checkout_id : Types::ID!
  # Returns: Payloads::CheckoutLineItemsAdd
  def checkout_line_items_add(line_items:, checkout_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutLineItemsRemove: Removes line items from an existing checkout
  # Args: checkout_id : Types::ID!, line_item_ids : [Types::ID!]!
  # Returns: Payloads::CheckoutLineItemsRemove
  def checkout_line_items_remove(checkout_id:, line_item_ids:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutLineItemsUpdate: Updates line items on a checkout.
  # Args: checkout_id : Types::ID!, line_items : [Inputs::CheckoutLineItemUpdate!]!
  # Returns: Payloads::CheckoutLineItemsUpdate
  def checkout_line_items_update(checkout_id:, line_items:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutShippingAddressUpdate: Updates the shipping address of an existing checkout.
  # Args: shipping_address : Inputs::MailingAddress!, checkout_id : Types::ID!
  # Returns: Payloads::CheckoutShippingAddressUpdate
  def checkout_shipping_address_update(shipping_address:, checkout_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkoutShippingLineUpdate: Updates the shipping lines on an existing checkout.
  # Args: checkout_id : Types::ID!, shipping_rate_handle : Types::String!
  # Returns: Payloads::CheckoutShippingLineUpdate
  def checkout_shipping_line_update(checkout_id:, shipping_rate_handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerAccessTokenCreate: Creates a customer access token. The customer access token is required to modify the customer object in any way. 
  # Args: input : Inputs::CustomerAccessTokenCreate!
  # Returns: Payloads::CustomerAccessTokenCreate
  def customer_access_token_create(input:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerAccessTokenDelete: Permanently destroys a customer access token.
  # Args: customer_access_token : Types::String!
  # Returns: Payloads::CustomerAccessTokenDelete
  def customer_access_token_delete(customer_access_token:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerAccessTokenRenew: Renews a customer access token. Access token renewal must happen *before* a token expires. If a token has already expired, a new one should be created instead via `customerAccessTokenCreate`. 
  # Args: customer_access_token : Types::String!
  # Returns: Payloads::CustomerAccessTokenRenew
  def customer_access_token_renew(customer_access_token:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerActivate: Activates a customer.
  # Args: id : Types::ID!, input : Inputs::CustomerActivate!
  # Returns: Payloads::CustomerActivate
  def customer_activate(id:, input:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerAddressCreate: Creates a new address for a customer.
  # Args: customer_access_token : Types::String!, address : Inputs::MailingAddress!
  # Returns: Payloads::CustomerAddressCreate
  def customer_address_create(customer_access_token:, address:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerAddressDelete: Permanently deletes the address of an existing customer.
  # Args: id : Types::ID!, customer_access_token : Types::String!
  # Returns: Payloads::CustomerAddressDelete
  def customer_address_delete(id:, customer_access_token:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerAddressUpdate: Updates the address of an existing customer.
  # Args: customer_access_token : Types::String!, id : Types::ID!, address : Inputs::MailingAddress!
  # Returns: Payloads::CustomerAddressUpdate
  def customer_address_update(customer_access_token:, id:, address:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerCreate: Creates a new customer.
  # Args: input : Inputs::CustomerCreate!
  # Returns: Payloads::CustomerCreate
  def customer_create(input:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerDefaultAddressUpdate: Updates the default address of an existing customer.
  # Args: customer_access_token : Types::String!, address_id : Types::ID!
  # Returns: Payloads::CustomerDefaultAddressUpdate
  def customer_default_address_update(customer_access_token:, address_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerRecover: Sends a reset password email to the customer, as the first step in the reset password process.
  # Args: email : Types::String!
  # Returns: Payloads::CustomerRecover
  def customer_recover(email:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerReset: Resets a customer’s password with a token received from `CustomerRecover`.
  # Args: id : Types::ID!, input : Inputs::CustomerReset!
  # Returns: Payloads::CustomerReset
  def customer_reset(id:, input:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerResetByUrl: Resets a customer’s password with the reset password url received from `CustomerRecover`.
  # Args: reset_url : Types::URL!, password : Types::String!
  # Returns: Payloads::CustomerResetByUrl
  def customer_reset_by_url(reset_url:, password:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerUpdate: Updates an existing customer.
  # Args: customer_access_token : Types::String!, customer : Inputs::CustomerUpdate!
  # Returns: Payloads::CustomerUpdate
  def customer_update(customer_access_token:, customer:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

