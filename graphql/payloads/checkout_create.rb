module Spree::GraphQL::Payloads::CheckoutCreate


  # The new checkout object.
  # Returns: Types::Checkout, null: true
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of errors that occurred executing the mutation.
  # Returns: [Types::CheckoutUserError], null: false
  def checkout_user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Types::CheckoutUserError], null: false
  def checkout_create_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

