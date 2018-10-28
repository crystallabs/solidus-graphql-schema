module Spree::GraphQL::Payloads::CustomerAddressDelete


  # Field: deletedCustomerAddressId: ID of the deleted customer address.
  # Returns: ::GraphQL::Types::String, null: true
  def deleted_customer_address_id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

