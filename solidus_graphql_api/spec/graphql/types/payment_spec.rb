require 'spec_helper'

describe 'Types' do
  describe 'Payment' do
    #let!(:payment) {create(:payment)}

    # @graphql amount The amount of the payment.
    # @return [Types::Money!]
    #it 'amount' do
    #  query = <<-GRAPHQL
    #    { payment { amount() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['amount']).to eq payment.amount
    #end

    # @graphql billingAddress The billing address for the payment.
    # @return [Types::MailingAddress]
    #it 'billing_address' do
    #  query = <<-GRAPHQL
    #    { payment { billingAddress() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['billingAddress']).to eq payment.billing_address
    #end

    # @graphql checkout The checkout to which the payment belongs.
    # @return [Types::Checkout!]
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { payment { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['checkout']).to eq payment.checkout
    #end

    # @graphql creditCard The credit card used for the payment in the case of direct payments.
    # @return [Types::CreditCard]
    #it 'credit_card' do
    #  query = <<-GRAPHQL
    #    { payment { creditCard() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['creditCard']).to eq payment.credit_card
    #end

    # @graphql errorMessage An message describing a processing error during asynchronous processing.
    # @return [Types::String]
    #it 'error_message' do
    #  query = <<-GRAPHQL
    #    { payment { errorMessage() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['errorMessage']).to eq payment.error_message
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { payment { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['id']).to eq payment.id
    #end

    # @graphql idempotencyKey A client-side generated token to identify a payment and perform idempotent operations.
    # @return [Types::String]
    #it 'idempotency_key' do
    #  query = <<-GRAPHQL
    #    { payment { idempotencyKey() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['idempotencyKey']).to eq payment.idempotency_key
    #end

    # @graphql ready Whether or not the payment is still processing asynchronously.
    # @return [Types::Boolean!]
    #it 'ready' do
    #  query = <<-GRAPHQL
    #    { payment { ready() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['ready']).to eq payment.ready
    #end

    # @graphql test A flag to indicate if the payment is to be done in test mode for gateways that support it.
    # @return [Types::Boolean!]
    #it 'test' do
    #  query = <<-GRAPHQL
    #    { payment { test() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment')
    #  expect(result['test']).to eq payment.test
    #end

    # @graphql transaction The actual transaction recorded by Solidus after having processed the payment with the gateway.
    # @return [Types::Transaction]
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

