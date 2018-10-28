module Spree::GraphQL::Inputs::TokenizedPayment


  # Specifies the fields required to complete a checkout with a tokenized payment. 
  # Returns: 
  def tokenized_payment_input(amount:, idempotency_key:, billing_address:, type:, payment_data:, test:, identifier:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

