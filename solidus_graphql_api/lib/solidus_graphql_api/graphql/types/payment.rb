module Spree::GraphQL::Types::Payment
  include ::Spree::GraphQL::Interfaces::Node
  # @graphql amount The amount of the payment.
  # @return [Types::Money!]
  def amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql billingAddress The billing address for the payment.
  # @return [Types::MailingAddress]
  def billing_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql checkout The checkout to which the payment belongs.
  # @return [Types::Checkout!]
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql creditCard The credit card used for the payment in the case of direct payments.
  # @return [Types::CreditCard]
  def credit_card()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql errorMessage An message describing a processing error during asynchronous processing.
  # @return [Types::String]
  def error_message()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql id Globally unique identifier.
  # @return [Types::ID!]
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql idempotencyKey A client-side generated token to identify a payment and perform idempotent operations.
  # @return [Types::String]
  def idempotency_key()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql ready Whether or not the payment is still processing asynchronously.
  # @return [Types::Boolean!]
  def ready()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql test A flag to indicate if the payment is to be done in test mode for gateways that support it.
  # @return [Types::Boolean!]
  def test()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql transaction The actual transaction recorded by Solidus after having processed the payment with the gateway.
  # @return [Types::Transaction]
  def transaction()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end
