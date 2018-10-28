module Spree::GraphQL::Inputs::CheckoutLineItemUpdate


  # Specifies the input fields to update a line item on the checkout.
  # Returns: 
  def checkout_line_item_update_input(id:, variant_id:, quantity:, custom_attributes:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

