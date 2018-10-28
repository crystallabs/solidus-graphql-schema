module Spree::GraphQL::Payloads::CustomerUpdate


  # Field: customer: The updated customer object.
  # Args: 
  # Returns: Types::Customer, null: true
  def customer()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerAccessToken: The newly created customer access token. If the customer's password is updated, all previous access tokens (including the one used to perform this mutation) become invalid, and a new token is generated. 
  # Args: 
  # Returns: Types::CustomerAccessToken, null: true
  def customer_access_token()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerUserErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::CustomerUserError], null: false
  def customer_user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

