require 'spec_helper'

describe 'Types' do
  describe 'ProductOption' do
    #let!(:product_option) {create(:product_option)}

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { product_option { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_option')
    #  expect(result['id']).to eq product_option.id
    #end

    # @graphql name The product option’s name.
    # @return [Types::String!]
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { product_option { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_option')
    #  expect(result['name']).to eq product_option.name
    #end

    # @graphql values The corresponding value to the product option name.
    # @return [[Types::String!]!]
    #it 'values' do
    #  query = <<-GRAPHQL
    #    { product_option { values() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_option')
    #  expect(result['values']).to eq product_option.values
    #end

  end
end

