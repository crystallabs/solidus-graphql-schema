module Spree::GraphQL::Payloads::CustomerAccessTokenDelete


  # Field: deletedAccessToken: The destroyed access token.
  # Args: 
  # Returns: Types::String
  def deleted_access_token()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: deletedCustomerAccessTokenId: ID of the destroyed customer access token.
  # Args: 
  # Returns: Types::String
  def deleted_customer_access_token_id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError!]!
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

