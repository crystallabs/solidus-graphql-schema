module Spree::GraphQL::Payloads::CheckoutLineItemsAdd


  # The updated checkout object.
  # Returns: Types::Checkout, null: true
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of errors that occurred executing the mutation.
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Types::UserError], null: false
  def checkout_line_items_add_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

