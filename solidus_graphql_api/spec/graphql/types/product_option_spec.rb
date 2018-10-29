require 'spec_helper'

describe 'Types' do
  describe 'ProductOption' do
    #let!(:product_option) {create(:product_option)}

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { product_option { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_option')
    #  expect(result['id']).to eq product_option.id
    #end

    # Field: name: The product option’s name.
    # Args: 
    # Returns: Types::String!
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { product_option { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_option')
    #  expect(result['name']).to eq product_option.name
    #end

    # Field: values: The corresponding value to the product option name.
    # Args: 
    # Returns: [Types::String!]!
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

