require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutLineItemsRemove' do
    #let!(:checkout_line_items_remove_payload) {create(:checkout_line_items_remove_payload)}

    # @graphql checkout
    # @return [Types::Checkout]
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_line_items_remove_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_items_remove_payload')
    #  expect(result['checkout']).to eq checkout_line_items_remove_payload.checkout
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_line_items_remove_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_items_remove_payload')
    #  expect(result['userErrors']).to eq checkout_line_items_remove_payload.user_errors
    #end

  end
end

