module Spree::GraphQL::Types::Payment
  include ::Spree::GraphQL::Interfaces::Node

  # Field: amount: The amount of the payment.
  # Args: 
  # Returns: Types::Money!
  def amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: billingAddress: The billing address for the payment.
  # Args: 
  # Returns: Types::MailingAddress
  def billing_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: checkout: The checkout to which the payment belongs.
  # Args: 
  # Returns: Types::Checkout!
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: creditCard: The credit card used for the payment in the case of direct payments.
  # Args: 
  # Returns: Types::CreditCard
  def credit_card()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: errorMessage: An message describing a processing error during asynchronous processing.
  # Args: 
  # Returns: Types::String
  def error_message()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: idempotencyKey: A client-side generated token to identify a payment and perform idempotent operations.
  # Args: 
  # Returns: Types::String
  def idempotency_key()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: ready: Whether or not the payment is still processing asynchronously.
  # Args: 
  # Returns: Types::Boolean!
  def ready()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: test: A flag to indicate if the payment is to be done in test mode for gateways that support it.
  # Args: 
  # Returns: Types::Boolean!
  def test()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: transaction: The actual transaction recorded by Store after having processed the payment with the gateway.
  # Args: 
  # Returns: Types::Transaction
  def transaction()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

