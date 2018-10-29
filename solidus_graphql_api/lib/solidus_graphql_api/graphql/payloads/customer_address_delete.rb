module Spree::GraphQL::Payloads::CustomerAddressDelete


  # Field: deletedCustomerAddressId: ID of the deleted customer address.
  # Args: 
  # Returns: Types::String
  def deleted_customer_address_id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError!]!
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

