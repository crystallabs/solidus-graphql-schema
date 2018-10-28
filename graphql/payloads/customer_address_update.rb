module Spree::GraphQL::Payloads::CustomerAddressUpdate


  # The customer’s updated mailing address.
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
  def customer_address_update_payload()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

