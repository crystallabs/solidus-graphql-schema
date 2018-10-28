module Spree::GraphQL::Inputs::CreditCardPayment


  # Specifies the fields required to complete a checkout with a Store vaulted credit card payment. 
  # Returns: 
  def credit_card_payment_input(amount:, idempotency_key:, billing_address:, vault_id:, test:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

