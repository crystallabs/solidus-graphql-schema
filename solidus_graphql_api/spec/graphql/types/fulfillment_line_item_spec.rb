require 'spec_helper'

describe 'Types' do
  describe 'FulfillmentLineItem' do
    #let!(:fulfillment_line_item) {create(:fulfillment_line_item)}

    # @graphql lineItem The associated order's line item.
    # @return [Types::OrderLineItem!]
    #it 'line_item' do
    #  query = <<-GRAPHQL
    #    { fulfillment_line_item { lineItem() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'fulfillment_line_item')
    #  expect(result['lineItem']).to eq fulfillment_line_item.line_item
    #end

    # @graphql quantity The amount fulfilled in this fulfillment.
    # @return [Types::Int!]
    #it 'quantity' do
    #  query = <<-GRAPHQL
    #    { fulfillment_line_item { quantity() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'fulfillment_line_item')
    #  expect(result['quantity']).to eq fulfillment_line_item.quantity
    #end

  end
end

