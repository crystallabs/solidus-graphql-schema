require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutCreate' do
    #let!(:checkout_create_payload) {create(:checkout_create_payload)}

    # Field: checkout: The new checkout object.
    # Args: 
    # Returns: Types::Checkout
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_create_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_create_payload')
    #  expect(result['checkout']).to eq checkout_create_payload.checkout
    #end

    # Field: checkoutUserErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::CheckoutUserError!]!
    #it 'checkout_user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_create_payload { checkoutUserErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_create_payload')
    #  expect(result['checkoutUserErrors']).to eq checkout_create_payload.checkout_user_errors
    #end

  end
end

