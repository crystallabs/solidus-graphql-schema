require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutLineItemsUpdate' do
    #let!(:checkout_line_items_update_payload) {create(:checkout_line_items_update_payload)}

    # @graphql checkout The updated checkout object.
    # @return [Types::Checkout]
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_line_items_update_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_items_update_payload')
    #  expect(result['checkout']).to eq checkout_line_items_update_payload.checkout
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_line_items_update_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_items_update_payload')
    #  expect(result['userErrors']).to eq checkout_line_items_update_payload.user_errors
    #end

  end
end
