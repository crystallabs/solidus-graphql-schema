module Spree::GraphQL::Payloads::CheckoutCustomerDisassociate


  # Field: checkout: The updated checkout object.
  # Args: 
  # Returns: Types::Checkout!
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError!]!
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

