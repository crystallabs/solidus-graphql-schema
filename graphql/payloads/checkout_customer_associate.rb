module Spree::GraphQL::Payloads::CheckoutCustomerAssociate


  # The updated checkout object.
  # Returns: Types::Checkout, null: false
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The associated customer object.
  # Returns: Types::Customer, null: true
  def customer()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of errors that occurred executing the mutation.
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Types::UserError], null: false
  def checkout_customer_associate_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

