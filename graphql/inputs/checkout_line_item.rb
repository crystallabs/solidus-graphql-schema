module Spree::GraphQL::Inputs::CheckoutLineItem


  # Specifies the input fields to create a line item on a checkout.
  # Returns: 
  def checkout_line_item_input(custom_attributes:, quantity:, variant_id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

