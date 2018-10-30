require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutShippingLineUpdate' do
    #let!(:checkout_shipping_line_update_payload) {create(:checkout_shipping_line_update_payload)}

    # @graphql checkout The updated checkout object.
    # @return [Types::Checkout]
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_shipping_line_update_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_shipping_line_update_payload')
    #  expect(result['checkout']).to eq checkout_shipping_line_update_payload.checkout
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_shipping_line_update_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_shipping_line_update_payload')
    #  expect(result['userErrors']).to eq checkout_shipping_line_update_payload.user_errors
    #end

  end
end
