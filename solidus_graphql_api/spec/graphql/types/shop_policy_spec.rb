require 'spec_helper'

describe 'Types' do
  describe 'ShopPolicy' do
    #let!(:shop_policy) {create(:shop_policy)}

    # Field: body: Policy text, maximum size of 64kb.
    # Args: 
    # Returns: Types::String!
    #it 'body' do
    #  query = <<-GRAPHQL
    #    { shop_policy { body() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop_policy')
    #  expect(result['body']).to eq shop_policy.body
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { shop_policy { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop_policy')
    #  expect(result['id']).to eq shop_policy.id
    #end

    # Field: title: Policy’s title.
    # Args: 
    # Returns: Types::String!
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { shop_policy { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop_policy')
    #  expect(result['title']).to eq shop_policy.title
    #end

    # Field: url: Public URL to the policy.
    # Args: 
    # Returns: Types::URL!
    #it 'url' do
    #  query = <<-GRAPHQL
    #    { shop_policy { url() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop_policy')
    #  expect(result['url']).to eq shop_policy.url
    #end

  end
end

