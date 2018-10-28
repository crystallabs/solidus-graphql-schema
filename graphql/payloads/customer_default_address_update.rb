module Spree::GraphQL::Payloads::CustomerDefaultAddressUpdate


  # The updated customer object.
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
  def customer_default_address_update_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

