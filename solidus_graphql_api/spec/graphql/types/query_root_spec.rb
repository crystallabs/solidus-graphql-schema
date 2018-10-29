require 'spec_helper'

describe 'Types' do
  describe 'QueryRoot' do
    #let!(:query_root) {create(:query_root)}

    # Field: articles: List of the shop's articles.
    # Args: reverse : Types::Boolean = false, sort_key : Types::ArticleSortKeys = 'ID', query : Types::String
    # Returns: Types::Article.connection_type!
    #it 'articles' do
    #  query = <<-GRAPHQL
    #    { query_root { articles(reverse:, sort_key:, query:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'query_root')
    #  expect(result['articles']).to eq query_root.articles
    #end

    # Field: blogByHandle: Find a blog by its handle.
    # Args: handle : Types::String!
    # Returns: Types::Blog
    #it 'blog_by_handle' do
    #  query = <<-GRAPHQL
    #    { query_root { blogByHandle(handle:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'query_root')
    #  expect(result['blogByHandle']).to eq query_root.blog_by_handle
    #end

    # Field: blogs: List of the shop's blogs.
    # Args: reverse : Types::Boolean = false, sort_key : Types::BlogSortKeys = 'ID', query : Types::String
    # Returns: Types::Blog.connection_type!
    #it 'blogs' do
    #  query = <<-GRAPHQL
    #    { query_root { blogs(reverse:, sort_key:, query:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'query_root')
    #  expect(result['blogs']).to eq query_root.blogs
    #end

    # Field: customer
    # Args: customer_access_token : Types::String!
    # Returns: Types::Customer
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { query_root { customer(customer_access_token:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'query_root')
    #  expect(result['customer']).to eq query_root.customer
    #end

    # Field: node
    # Args: id : Types::ID!
    # Returns: Interfaces::Node
    #it 'node' do
    #  query = <<-GRAPHQL
    #    { query_root { node(id:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'query_root')
    #  expect(result['node']).to eq query_root.node
    #end

    # Field: nodes
    # Args: ids : [Types::ID!]!
    # Returns: [Interfaces::Node]!
    #it 'nodes' do
    #  query = <<-GRAPHQL
    #    { query_root { nodes(ids:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'query_root')
    #  expect(result['nodes']).to eq query_root.nodes
    #end

    # Field: shop
    # Args: 
    # Returns: Types::Shop!
    #it 'shop' do
    #  query = <<-GRAPHQL
    #    { query_root { shop() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'query_root')
    #  expect(result['shop']).to eq query_root.shop
    #end

  end
end

