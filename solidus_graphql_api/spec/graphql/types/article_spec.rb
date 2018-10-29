require 'spec_helper'

describe 'Types' do
  describe 'Article' do
    #let!(:article) {create(:article)}

    # Field: authorV2: The article's author.
    # Args: 
    # Returns: Types::ArticleAuthor
    #it 'author_v2' do
    #  query = <<-GRAPHQL
    #    { article { authorV2() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['authorV2']).to eq article.author_v2
    #end

    # Field: blog: The blog that the article belongs to.
    # Args: 
    # Returns: Types::Blog!
    #it 'blog' do
    #  query = <<-GRAPHQL
    #    { article { blog() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['blog']).to eq article.blog
    #end

    # Field: comments: List of comments posted on the article.
    # Args: reverse : Types::Boolean = false
    # Returns: Types::Comment.connection_type!
    #it 'comments' do
    #  query = <<-GRAPHQL
    #    { article { comments(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['comments']).to eq article.comments
    #end

    # Field: content: Stripped content of the article, single line with HTML tags removed.
    # Args: truncate_at : Types::Int
    # Returns: Types::String!
    #it 'content' do
    #  query = <<-GRAPHQL
    #    { article { content(truncate_at:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['content']).to eq article.content
    #end

    # Field: contentHtml: The content of the article, complete with HTML formatting.
    # Args: 
    # Returns: Types::HTML!
    #it 'content_html' do
    #  query = <<-GRAPHQL
    #    { article { contentHtml() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['contentHtml']).to eq article.content_html
    #end

    # Field: excerpt: Stripped excerpt of the article, single line with HTML tags removed.
    # Args: truncate_at : Types::Int
    # Returns: Types::String
    #it 'excerpt' do
    #  query = <<-GRAPHQL
    #    { article { excerpt(truncate_at:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['excerpt']).to eq article.excerpt
    #end

    # Field: excerptHtml: The excerpt of the article, complete with HTML formatting.
    # Args: 
    # Returns: Types::HTML
    #it 'excerpt_html' do
    #  query = <<-GRAPHQL
    #    { article { excerptHtml() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['excerptHtml']).to eq article.excerpt_html
    #end

    # Field: handle: A human-friendly unique string for the Article automatically generated from its title. 
    # Args: 
    # Returns: Types::String!
    #it 'handle' do
    #  query = <<-GRAPHQL
    #    { article { handle() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['handle']).to eq article.handle
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { article { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['id']).to eq article.id
    #end

    # Field: image: The image associated with the article.
    # Args: max_width : Types::Int, max_height : Types::Int, crop : Types::CropRegion, scale : Types::Int = 1
    # Returns: Types::Image
    #it 'image' do
    #  query = <<-GRAPHQL
    #    { article { image(max_width:, max_height:, crop:, scale:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['image']).to eq article.image
    #end

    # Field: publishedAt: The date and time when the article was published.
    # Args: 
    # Returns: Types::DateTime!
    #it 'published_at' do
    #  query = <<-GRAPHQL
    #    { article { publishedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['publishedAt']).to eq article.published_at
    #end

    # Field: tags: A categorization that a article can be tagged with.
    # Args: 
    # Returns: [Types::String!]!
    #it 'tags' do
    #  query = <<-GRAPHQL
    #    { article { tags() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['tags']).to eq article.tags
    #end

    # Field: title: The article’s name.
    # Args: 
    # Returns: Types::String!
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { article { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article')
    #  expect(result['title']).to eq article.title
    #end

    # Field: url: The url pointing to the article accessible from the web.
    # Args: 
    # Returns: Types::URL!
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

