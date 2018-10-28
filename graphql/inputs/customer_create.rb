module Spree::GraphQL::Inputs::CustomerCreate


  # Specifies the fields required to create a new Customer.
  # Returns: 
  def customer_create_input(first_name:, last_name:, email:, phone:, password:, accepts_marketing:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

