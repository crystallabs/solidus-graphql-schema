require 'spec_helper'

describe 'Types' do
  describe 'OrderLineItem' do
    #let!(:order_line_item) {create(:order_line_item)}

    # @graphql customAttributes List of custom attributes associated to the line item.
    # @return [[Types::Attribute!]!]
    #it 'custom_attributes' do
    #  query = <<-GRAPHQL
    #    { order_line_item { customAttributes() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order_line_item')
    #  expect(result['customAttributes']).to eq order_line_item.custom_attributes
    #end

    # @graphql discountAllocations The discounts that have been allocated onto the order line item by discount applications.
    # @return [[Types::DiscountAllocation!]!]
    #it 'discount_allocations' do
    #  query = <<-GRAPHQL
    #    { order_line_item { discountAllocations() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order_line_item')
    #  expect(result['discountAllocations']).to eq order_line_item.discount_allocations
    #end

    # @graphql quantity The number of products variants associated to the line item.
    # @return [Types::Int!]
    #it 'quantity' do
    #  query = <<-GRAPHQL
    #    { order_line_item { quantity() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order_line_item')
    #  expect(result['quantity']).to eq order_line_item.quantity
    #end

    # @graphql title The title of the product combined with title of the variant.
    # @return [Types::String!]
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { order_line_item { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order_line_item')
    #  expect(result['title']).to eq order_line_item.title
    #end

    # @graphql variant The product variant object associated to the line item.
    # @return [Types::ProductVariant]
    #it 'variant' do
    #  query = <<-GRAPHQL
    #    { order_line_item { variant() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order_line_item')
    #  expect(result['variant']).to eq order_line_item.variant
    #end

  end
end
