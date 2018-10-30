require 'spec_helper'

describe 'Types' do
  describe 'Collection' do
    #let!(:collection) {create(:collection)}

    # @graphql description Stripped description of the collection, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    #it 'description' do
    #  query = <<-GRAPHQL
    #    { collection { description(truncate_at:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['description']).to eq collection.description
    #end

    # @graphql descriptionHtml The description of the collection, complete with HTML formatting.
    # @return [Types::HTML!]
    #it 'description_html' do
    #  query = <<-GRAPHQL
    #    { collection { descriptionHtml() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['descriptionHtml']).to eq collection.description_html
    #end

    # @graphql handle A human-friendly unique string for the collection automatically generated from its title. Limit of 255 characters. 
    # @return [Types::String!]
    #it 'handle' do
    #  query = <<-GRAPHQL
    #    { collection { handle() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['handle']).to eq collection.handle
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { collection { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['id']).to eq collection.id
    #end

    # @graphql image Image associated with the collection.
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @return [Types::Image]
    #it 'image' do
    #  query = <<-GRAPHQL
    #    { collection { image(max_width:, max_height:, crop:, scale:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['image']).to eq collection.image
    #end

    # @graphql products List of products in the collection.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ProductCollectionSortKeys] ('COLLECTION_DEFAULT')
    # @return [Types::Product.connection_type!]
    #it 'products' do
    #  query = <<-GRAPHQL
    #    { collection { products(reverse:, sort_key:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['products']).to eq collection.products
    #end

    # @graphql title The collection’s name. Limit of 255 characters.
    # @return [Types::String!]
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { collection { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['title']).to eq collection.title
    #end

    # @graphql updatedAt The date and time when the collection was last modified.
    # @return [Types::DateTime!]
    #it 'updated_at' do
    #  query = <<-GRAPHQL
    #    { collection { updatedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['updatedAt']).to eq collection.updated_at
    #end

  end
end
