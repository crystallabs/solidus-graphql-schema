module Spree::GraphQL::Payloads::CustomerReset


  # The customer object which was reset.
  # Returns: Types::Customer, null: true
  def customer()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A newly created customer access token object for the customer.
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
  def customer_reset_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

