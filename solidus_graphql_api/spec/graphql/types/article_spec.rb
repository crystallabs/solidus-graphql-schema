require 'spec_helper'

describe 'Types' do
  describe 'Article' do
    #let!(:article) {create(:article)}

    # @graphql authorV2 The article's author.
    # @return [Types::ArticleAuthor]
    #it 'author_v2' do
    #  query = <<-GRAPHQL
    #    { article { authorV2() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['authorV2']).to eq article.author_v2
    #end

    # @graphql blog The blog that the article belongs to.
    # @return [Types::Blog!]
    #it 'blog' do
    #  query = <<-GRAPHQL
    #    { article { blog() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['blog']).to eq article.blog
    #end

    # @graphql comments List of comments posted on the article.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::Comment.connection_type!]
    #it 'comments' do
    #  query = <<-GRAPHQL
    #    { article { comments(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['comments']).to eq article.comments
    #end

    # @graphql content Stripped content of the article, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    #it 'content' do
    #  query = <<-GRAPHQL
    #    { article { content(truncate_at:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['content']).to eq article.content
    #end

    # @graphql contentHtml The content of the article, complete with HTML formatting.
    # @return [Types::HTML!]
    #it 'content_html' do
    #  query = <<-GRAPHQL
    #    { article { contentHtml() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['contentHtml']).to eq article.content_html
    #end

    # @graphql excerpt Stripped excerpt of the article, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String]
    #it 'excerpt' do
    #  query = <<-GRAPHQL
    #    { article { excerpt(truncate_at:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['excerpt']).to eq article.excerpt
    #end

    # @graphql excerptHtml The excerpt of the article, complete with HTML formatting.
    # @return [Types::HTML]
    #it 'excerpt_html' do
    #  query = <<-GRAPHQL
    #    { article { excerptHtml() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['excerptHtml']).to eq article.excerpt_html
    #end

    # @graphql handle A human-friendly unique string for the Article automatically generated from its title. 
    # @return [Types::String!]
    #it 'handle' do
    #  query = <<-GRAPHQL
    #    { article { handle() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['handle']).to eq article.handle
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { article { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['id']).to eq article.id
    #end

    # @graphql image The image associated with the article.
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @return [Types::Image]
    #it 'image' do
    #  query = <<-GRAPHQL
    #    { article { image(max_width:, max_height:, crop:, scale:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['image']).to eq article.image
    #end

    # @graphql publishedAt The date and time when the article was published.
    # @return [Types::DateTime!]
    #it 'published_at' do
    #  query = <<-GRAPHQL
    #    { article { publishedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['publishedAt']).to eq article.published_at
    #end

    # @graphql tags A categorization that a article can be tagged with.
    # @return [[Types::String!]!]
    #it 'tags' do
    #  query = <<-GRAPHQL
    #    { article { tags() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['tags']).to eq article.tags
    #end

    # @graphql title The article’s name.
    # @return [Types::String!]
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { article { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['title']).to eq article.title
    #end

    # @graphql url The url pointing to the article accessible from the web.
    # @return [Types::URL!]
    #it 'url' do
    #  query = <<-GRAPHQL
    #    { article { url() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['url']).to eq article.url
    #end

  end
end

