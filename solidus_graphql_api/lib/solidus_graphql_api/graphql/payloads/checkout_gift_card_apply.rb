module Spree::GraphQL::Payloads::CheckoutGiftCardApply


  # Field: checkout: The updated checkout object.
  # Args: 
  # Returns: Types::Checkout, null: false
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

