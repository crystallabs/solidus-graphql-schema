module Spree::GraphQL::Inputs::TokenizedPaymentV2


  # Specifies the fields required to complete a checkout with a tokenized payment. 
  # Returns: 
  def tokenized_payment_input_v2(payment_amount:, idempotency_key:, billing_address:, type:, payment_data:, test:, identifier:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

