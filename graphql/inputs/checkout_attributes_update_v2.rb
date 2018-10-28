module Spree::GraphQL::Inputs::CheckoutAttributesUpdateV2


  # Specifies the fields required to update a checkout's attributes.
  # Defaults: allow_partial_addresses = false
  # Returns: 
  def checkout_attributes_update_v2_input(note:, custom_attributes:, allow_partial_addresses:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

