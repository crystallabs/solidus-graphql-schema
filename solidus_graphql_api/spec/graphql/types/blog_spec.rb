require 'spec_helper'

describe 'Types' do
  describe 'Blog' do
    #let!(:blog) {create(:blog)}

    # @graphql articleByHandle Find an article by its handle.
    # @param handle [Types::String!]
    # @return [Types::Article]
    #it 'article_by_handle' do
    #  query = <<-GRAPHQL
    #    { blog { articleByHandle(handle:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['articleByHandle']).to eq blog.article_by_handle
    #end

    # @graphql articles List of the blog's articles.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::Article.connection_type!]
    #it 'articles' do
    #  query = <<-GRAPHQL
    #    { blog { articles(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['articles']).to eq blog.articles
    #end

    # @graphql authors The authors who have contributed to the blog.
    # @return [[Types::ArticleAuthor!]!]
    #it 'authors' do
    #  query = <<-GRAPHQL
    #    { blog { authors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['authors']).to eq blog.authors
    #end

    # @graphql handle A human-friendly unique string for the Blog automatically generated from its title. 
    # @return [Types::String!]
    #it 'handle' do
    #  query = <<-GRAPHQL
    #    { blog { handle() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['handle']).to eq blog.handle
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { blog { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['id']).to eq blog.id
    #end

    # @graphql title The blogs’s title.
    # @return [Types::String!]
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { blog { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'blog')
    #  expect(result['title']).to eq blog.title
    #end

    # @graphql url The url pointing to the blog accessible from the web.
    # @return [Types::URL!]
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

