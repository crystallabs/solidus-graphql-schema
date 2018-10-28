module Spree::GraphQL::Types::CustomerAccessToken


  # The customer’s access token.
  # Returns: ::GraphQL::Types::String, null: false
  def access_token()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the customer access token expires.
  # Returns: Types::DateTime, null: false
  def expires_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A CustomerAccessToken represents the unique token required to make modifications to the customer object.
  # Returns: Types::DateTime, null: false
  def customer_access_token()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

