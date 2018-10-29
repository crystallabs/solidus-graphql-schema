require 'spec_helper'

describe 'Types' do
  describe 'ShippingRate' do
    #let!(:shipping_rate) {create(:shipping_rate)}

    # Field: handle: Human-readable unique identifier for this shipping rate.
    # Args: 
    # Returns: Types::String!
    #it 'handle' do
    #  query = <<-GRAPHQL
    #    { shipping_rate { handle() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shipping_rate')
    #  expect(result['handle']).to eq shipping_rate.handle
    #end

    # Field: price: Price of this shipping rate.
    # Args: 
    # Returns: Types::Money!
    #it 'price' do
    #  query = <<-GRAPHQL
    #    { shipping_rate { price() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shipping_rate')
    #  expect(result['price']).to eq shipping_rate.price
    #end

    # Field: title: Title of this shipping rate.
    # Args: 
    # Returns: Types::String!
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { shipping_rate { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shipping_rate')
    #  expect(result['title']).to eq shipping_rate.title
    #end

  end
end

