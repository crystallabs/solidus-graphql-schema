module Spree::GraphQL::Payloads::CustomerAccessTokenRenew


  # The renewed customer access token object.
  # Returns: Types::CustomerAccessToken, null: true
  def customer_access_token()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of errors that occurred executing the mutation.
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Types::UserError], null: false
  def customer_access_token_renew_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

