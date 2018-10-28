module Spree::GraphQL::Inputs::CustomerActivate


  # Specifies the input fields required to activate a customer.
  # Returns: 
  def customer_activate_input(activation_token:, password:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

