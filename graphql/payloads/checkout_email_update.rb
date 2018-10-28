module Spree::GraphQL::Payloads::CheckoutEmailUpdate


  # The checkout object with the updated email.
  # Returns: Types::Checkout, null: false
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
  def checkout_email_update_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

