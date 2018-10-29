module Spree::GraphQL::Payloads::CustomerCreate


  # Field: customer: The created customer object.
  # Args: 
  # Returns: Types::Customer
  def customer()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerUserErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::CustomerUserError!]!
  def customer_user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

