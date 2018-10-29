require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutCompleteWithCreditCard' do
    #let!(:checkout_complete_with_credit_card_payload) {create(:checkout_complete_with_credit_card_payload)}

    # Field: checkout: The checkout on which the payment was applied.
    # Args: 
    # Returns: Types::Checkout!
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_complete_with_credit_card_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_complete_with_credit_card_payload')
    #  expect(result['checkout']).to eq checkout_complete_with_credit_card_payload.checkout
    #end

    # Field: payment: A representation of the attempted payment.
    # Args: 
    # Returns: Types::Payment
    #it 'payment' do
    #  query = <<-GRAPHQL
    #    { checkout_complete_with_credit_card_payload { payment() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_complete_with_credit_card_payload')
    #  expect(result['payment']).to eq checkout_complete_with_credit_card_payload.payment
    #end

    # Field: userErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::UserError!]!
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_complete_with_credit_card_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_complete_with_credit_card_payload')
    #  expect(result['userErrors']).to eq checkout_complete_with_credit_card_payload.user_errors
    #end

  end
end

