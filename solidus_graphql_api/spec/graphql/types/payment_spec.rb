require 'spec_helper'

describe 'Types' do
  describe 'Payment' do
    #let!(:payment) {create(:payment)}

    # Field: amount: The amount of the payment.
    # Args: 
    # Returns: Types::Money!
    #it 'amount' do
    #  query = <<-GRAPHQL
    #    { payment { amount() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['amount']).to eq payment.amount
    #end

    # Field: billingAddress: The billing address for the payment.
    # Args: 
    # Returns: Types::MailingAddress
    #it 'billing_address' do
    #  query = <<-GRAPHQL
    #    { payment { billingAddress() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['billingAddress']).to eq payment.billing_address
    #end

    # Field: checkout: The checkout to which the payment belongs.
    # Args: 
    # Returns: Types::Checkout!
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { payment { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['checkout']).to eq payment.checkout
    #end

    # Field: creditCard: The credit card used for the payment in the case of direct payments.
    # Args: 
    # Returns: Types::CreditCard
    #it 'credit_card' do
    #  query = <<-GRAPHQL
    #    { payment { creditCard() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['creditCard']).to eq payment.credit_card
    #end

    # Field: errorMessage: An message describing a processing error during asynchronous processing.
    # Args: 
    # Returns: Types::String
    #it 'error_message' do
    #  query = <<-GRAPHQL
    #    { payment { errorMessage() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['errorMessage']).to eq payment.error_message
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { payment { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['id']).to eq payment.id
    #end

    # Field: idempotencyKey: A client-side generated token to identify a payment and perform idempotent operations.
    # Args: 
    # Returns: Types::String
    #it 'idempotency_key' do
    #  query = <<-GRAPHQL
    #    { payment { idempotencyKey() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['idempotencyKey']).to eq payment.idempotency_key
    #end

    # Field: ready: Whether or not the payment is still processing asynchronously.
    # Args: 
    # Returns: Types::Boolean!
    #it 'ready' do
    #  query = <<-GRAPHQL
    #    { payment { ready() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['ready']).to eq payment.ready
    #end

    # Field: test: A flag to indicate if the payment is to be done in test mode for gateways that support it.
    # Args: 
    # Returns: Types::Boolean!
    #it 'test' do
    #  query = <<-GRAPHQL
    #    { payment { test() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['test']).to eq payment.test
    #end

    # Field: transaction: The actual transaction recorded by Store after having processed the payment with the gateway.
    # Args: 
    # Returns: Types::Transaction
    #it 'transaction' do
    #  query = <<-GRAPHQL
    #    { payment { transaction() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['transaction']).to eq payment.transaction
    #end

  end
end

