module Spree::GraphQL::Payloads::CustomerUpdate


  # The updated customer object.
  # Returns: Types::Customer, null: true
  def customer()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The newly created customer access token. If the customer's password is updated, all previous access tokens (including the one used to perform this mutation) become invalid, and a new token is generated. 
  # Returns: Types::CustomerAccessToken, null: true
  def customer_access_token()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of errors that occurred executing the mutation.
  # Returns: [Types::CustomerUserError], null: false
  def customer_user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Types::CustomerUserError], null: false
  def customer_update_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end
