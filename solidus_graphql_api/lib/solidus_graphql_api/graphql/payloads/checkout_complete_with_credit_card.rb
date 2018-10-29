module Spree::GraphQL::Payloads::CheckoutCompleteWithCreditCard


  # Field: checkout: The checkout on which the payment was applied.
  # Args: 
  # Returns: Types::Checkout!
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: payment: A representation of the attempted payment.
  # Args: 
  # Returns: Types::Payment
  def payment()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError!]!
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

