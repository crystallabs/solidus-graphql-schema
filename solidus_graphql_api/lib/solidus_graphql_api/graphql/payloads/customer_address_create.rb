module Spree::GraphQL::Payloads::CustomerAddressCreate


  # Field: customerAddress: The new customer address object.
  # Args: 
  # Returns: Types::MailingAddress, null: true
  def customer_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

