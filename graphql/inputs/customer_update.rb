module Spree::GraphQL::Inputs::CustomerUpdate


  # Specifies the fields required to update the Customer information.
  # Returns: 
  def customer_update_input(first_name:, last_name:, email:, phone:, password:, accepts_marketing:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

