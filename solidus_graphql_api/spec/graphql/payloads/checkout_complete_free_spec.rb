require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutCompleteFree' do
    #let!(:checkout_complete_free_payload) {create(:checkout_complete_free_payload)}

    # Field: checkout: The updated checkout object.
    # Args: 
    # Returns: Types::Checkout
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_complete_free_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_complete_free_payload')
    #  expect(result['checkout']).to eq checkout_complete_free_payload.checkout
    #end

    # Field: userErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::UserError!]!
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_complete_free_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_complete_free_payload')
    #  expect(result['userErrors']).to eq checkout_complete_free_payload.user_errors
    #end

  end
end

