module Spree::GraphQL::Payloads::CustomerDefaultAddressUpdate


  # Field: customer: The updated customer object.
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

