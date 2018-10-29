require 'spec_helper'

describe 'Types' do
  describe 'Blog' do
    #let!(:blog) {create(:blog)}

    # Field: articleByHandle: Find an article by its handle.
    # Args: handle : Types::String!
    # Returns: Types::Article
    #it 'article_by_handle' do
    #  query = <<-GRAPHQL
    #    { blog { articleByHandle(handle:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['articleByHandle']).to eq blog.article_by_handle
    #end

    # Field: articles: List of the blog's articles.
    # Args: reverse : Types::Boolean = false
    # Returns: Types::Article.connection_type!
    #it 'articles' do
    #  query = <<-GRAPHQL
    #    { blog { articles(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['articles']).to eq blog.articles
    #end

    # Field: authors: The authors who have contributed to the blog.
    # Args: 
    # Returns: [Types::ArticleAuthor!]!
    #it 'authors' do
    #  query = <<-GRAPHQL
    #    { blog { authors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['authors']).to eq blog.authors
    #end

    # Field: handle: A human-friendly unique string for the Blog automatically generated from its title. 
    # Args: 
    # Returns: Types::String!
    #it 'handle' do
    #  query = <<-GRAPHQL
    #    { blog { handle() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['handle']).to eq blog.handle
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { blog { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['id']).to eq blog.id
    #end

    # Field: title: The blogs’s title.
    # Args: 
    # Returns: Types::String!
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { blog { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['title']).to eq blog.title
    #end

    # Field: url: The url pointing to the blog accessible from the web.
    # Args: 
    # Returns: Types::URL!
    #it 'url' do
    #  query = <<-GRAPHQL
    #    { blog { url() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['url']).to eq blog.url
    #end

  end
end

