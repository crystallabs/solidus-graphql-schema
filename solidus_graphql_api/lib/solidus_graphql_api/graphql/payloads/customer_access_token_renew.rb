module Spree::GraphQL::Payloads::CustomerAccessTokenRenew


  # Field: customerAccessToken: The renewed customer access token object.
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

