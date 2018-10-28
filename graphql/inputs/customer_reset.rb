module Spree::GraphQL::Inputs::CustomerReset


  # Specifies the fields required to reset a Customer’s password.
  # Returns: 
  def customer_reset_input(reset_token:, password:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

