module Spree::GraphQL::Payloads::CustomerAddressCreate


  # Field: customerAddress: The new customer address object.
  # Args: 
  # Returns: Types::MailingAddress
  def customer_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: userErrors: List of errors that occurred executing the mutation.
  # Args: 
  # Returns: [Types::UserError!]!
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

