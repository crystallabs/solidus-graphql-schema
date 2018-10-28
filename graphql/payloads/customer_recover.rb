module Spree::GraphQL::Payloads::CustomerRecover


  # List of errors that occurred executing the mutation.
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Types::UserError], null: false
  def customer_recover_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

