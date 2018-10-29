module Spree::GraphQL::Payloads::CheckoutCustomerAssociateV2


  # Field: checkout: The updated checkout object.
  # Args: 
  # Returns: Types::Checkout
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customer: The associated customer object.
  # Args: 
  # Returns: Types::Customer
  def customer()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError!]!
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

