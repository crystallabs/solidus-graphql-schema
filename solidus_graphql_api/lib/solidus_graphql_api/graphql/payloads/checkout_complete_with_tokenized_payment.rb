module Spree::GraphQL::Payloads::CheckoutCompleteWithTokenizedPayment


  # Field: checkout: The checkout on which the payment was applied.
  # Args: 
  # Returns: Types::Checkout, null: false
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: payment: A representation of the attempted payment.
  # Args: 
  # Returns: Types::Payment, null: true
  def payment()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

