module Spree::GraphQL::Payloads::CheckoutCompleteFree


  # Field: checkout: The updated checkout object.
  # Args: 
  # Returns: Types::Checkout, null: true
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

