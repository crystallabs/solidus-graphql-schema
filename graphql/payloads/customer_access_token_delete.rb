module Spree::GraphQL::Payloads::CustomerAccessTokenDelete


  # The destroyed access token.
  # Returns: ::GraphQL::Types::String, null: true
  def deleted_access_token()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # ID of the destroyed customer access token.
  # Returns: ::GraphQL::Types::String, null: true
  def deleted_customer_access_token_id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of errors that occurred executing the mutation.
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Types::UserError], null: false
  def customer_access_token_delete_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

