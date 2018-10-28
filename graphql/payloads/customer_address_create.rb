module Spree::GraphQL::Payloads::CustomerAddressCreate


  # The new customer address object.
  # Returns: Types::MailingAddress, null: true
  def customer_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of errors that occurred executing the mutation.
  # Returns: [Types::UserError], null: false
  def user_errors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Types::UserError], null: false
  def customer_address_create_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

