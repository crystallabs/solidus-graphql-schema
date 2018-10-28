module Spree::GraphQL::Inputs::CheckoutCreate


  # Specifies the fields required to create a checkout.
  # Returns: 
  def checkout_create_input(email:, line_items:, shipping_address:, note:, custom_attributes:, allow_partial_addresses:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

