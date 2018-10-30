require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutLineItemsAdd' do
    #let!(:checkout_line_items_add_payload) {create(:checkout_line_items_add_payload)}

    # @graphql checkout The updated checkout object.
    # @return [Types::Checkout]
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_line_items_add_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_items_add_payload')
    #  expect(result['checkout']).to eq checkout_line_items_add_payload.checkout
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_line_items_add_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_items_add_payload')
    #  expect(result['userErrors']).to eq checkout_line_items_add_payload.user_errors
    #end

  end
end
