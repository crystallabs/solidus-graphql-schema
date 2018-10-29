module Spree::GraphQL::Payloads::CustomerResetByUrl


  # Field: customer: The customer object which was reset.
  # Args: 
  # Returns: Types::Customer
  def customer()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerAccessToken: A newly created customer access token object for the customer.
  # Args: 
  # Returns: Types::CustomerAccessToken
  def customer_access_token()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError!]!
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

