require 'spec_helper'

describe 'Types' do
  describe 'Collection' do
    #let!(:collection) {create(:collection)}

    # Field: description: Stripped description of the collection, single line with HTML tags removed.
    # Args: truncate_at : Types::Int
    # Returns: Types::String!
    #it 'description' do
    #  query = <<-GRAPHQL
    #    { collection { description(truncate_at:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['description']).to eq collection.description
    #end

    # Field: descriptionHtml: The description of the collection, complete with HTML formatting.
    # Args: 
    # Returns: Types::HTML!
    #it 'description_html' do
    #  query = <<-GRAPHQL
    #    { collection { descriptionHtml() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['descriptionHtml']).to eq collection.description_html
    #end

    # Field: handle: A human-friendly unique string for the collection automatically generated from its title. Limit of 255 characters. 
    # Args: 
    # Returns: Types::String!
    #it 'handle' do
    #  query = <<-GRAPHQL
    #    { collection { handle() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['handle']).to eq collection.handle
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { collection { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['id']).to eq collection.id
    #end

    # Field: image: Image associated with the collection.
    # Args: max_width : Types::Int, max_height : Types::Int, crop : Types::CropRegion, scale : Types::Int = 1
    # Returns: Types::Image
    #it 'image' do
    #  query = <<-GRAPHQL
    #    { collection { image(max_width:, max_height:, crop:, scale:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['image']).to eq collection.image
    #end

    # Field: products: List of products in the collection.
    # Args: reverse : Types::Boolean = false, sort_key : Types::ProductCollectionSortKeys = 'COLLECTION_DEFAULT'
    # Returns: Types::Product.connection_type!
    #it 'products' do
    #  query = <<-GRAPHQL
    #    { collection { products(reverse:, sort_key:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['products']).to eq collection.products
    #end

    # Field: title: The collection’s name. Limit of 255 characters.
    # Args: 
    # Returns: Types::String!
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { collection { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'collection')
    #  expect(result['title']).to eq collection.title
    #end

    # Field: updatedAt: The date and time when the collection was last modified.
    # Args: 
    # Returns: Types::DateTime!
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

