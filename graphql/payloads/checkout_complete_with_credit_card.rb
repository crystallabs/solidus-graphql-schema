module Spree::GraphQL::Payloads::CheckoutCompleteWithCreditCard


  # The checkout on which the payment was applied.
  # Returns: Types::Checkout, null: false
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A representation of the attempted payment.
  # Returns: Types::Payment, null: true
  def payment()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of errors that occurred executing the mutation.
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Types::UserError], null: false
  def checkout_complete_with_credit_card_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

