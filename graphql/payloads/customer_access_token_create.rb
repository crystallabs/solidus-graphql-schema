module Spree::GraphQL::Payloads::CustomerAccessTokenCreate


  # Field: customerAccessToken: The newly created customer access token object.
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

