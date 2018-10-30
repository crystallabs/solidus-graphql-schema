require 'spec_helper'

describe 'Types' do
  describe 'Comment' do
    #let!(:comment) {create(:comment)}

    # @graphql author The comment’s author.
    # @return [Types::CommentAuthor!]
    #it 'author' do
    #  query = <<-GRAPHQL
    #    { comment { author() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment')
    #  expect(result['author']).to eq comment.author
    #end

    # @graphql content Stripped content of the comment, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    #it 'content' do
    #  query = <<-GRAPHQL
    #    { comment { content(truncate_at:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment')
    #  expect(result['content']).to eq comment.content
    #end

    # @graphql contentHtml The content of the comment, complete with HTML formatting.
    # @return [Types::HTML!]
    #it 'content_html' do
    #  query = <<-GRAPHQL
    #    { comment { contentHtml() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment')
    #  expect(result['contentHtml']).to eq comment.content_html
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { comment { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment')
    #  expect(result['id']).to eq comment.id
    #end

  end
end
