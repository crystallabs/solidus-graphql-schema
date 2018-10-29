require 'spec_helper'

describe 'Types' do
  describe 'CheckoutLineItem' do
    #let!(:checkout_line_item) {create(:checkout_line_item)}

    # Field: customAttributes: Extra information in the form of an array of Key-Value pairs about the line item.
    # Args: 
    # Returns: [Types::Attribute!]!
    #it 'custom_attributes' do
    #  query = <<-GRAPHQL
    #    { checkout_line_item { customAttributes() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_item')
    #  expect(result['customAttributes']).to eq checkout_line_item.custom_attributes
    #end

    # Field: discountAllocations: The discounts that have been allocated onto the checkout line item by discount applications.
    # Args: 
    # Returns: [Types::DiscountAllocation!]!
    #it 'discount_allocations' do
    #  query = <<-GRAPHQL
    #    { checkout_line_item { discountAllocations() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_item')
    #  expect(result['discountAllocations']).to eq checkout_line_item.discount_allocations
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { checkout_line_item { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_item')
    #  expect(result['id']).to eq checkout_line_item.id
    #end

    # Field: quantity: The quantity of the line item.
    # Args: 
    # Returns: Types::Int!
    #it 'quantity' do
    #  query = <<-GRAPHQL
    #    { checkout_line_item { quantity() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_item')
    #  expect(result['quantity']).to eq checkout_line_item.quantity
    #end

    # Field: title: Title of the line item. Defaults to the product's title.
    # Args: 
    # Returns: Types::String!
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { checkout_line_item { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_item')
    #  expect(result['title']).to eq checkout_line_item.title
    #end

    # Field: variant: Product variant of the line item.
    # Args: 
    # Returns: Types::ProductVariant
    #it 'variant' do
    #  query = <<-GRAPHQL
    #    { checkout_line_item { variant() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_line_item')
    #  expect(result['variant']).to eq checkout_line_item.variant
    #end

  end
end

