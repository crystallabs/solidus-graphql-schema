require 'spec_helper'

describe 'Types' do
  describe 'Comment' do
    #let!(:comment) {create(:comment)}

    # Field: author: The comment’s author.
    # Args: 
    # Returns: Types::CommentAuthor!
    #it 'author' do
    #  query = <<-GRAPHQL
    #    { comment { author() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment')
    #  expect(result['author']).to eq comment.author
    #end

    # Field: content: Stripped content of the comment, single line with HTML tags removed.
    # Args: truncate_at : Types::Int
    # Returns: Types::String!
    #it 'content' do
    #  query = <<-GRAPHQL
    #    { comment { content(truncate_at:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment')
    #  expect(result['content']).to eq comment.content
    #end

    # Field: contentHtml: The content of the comment, complete with HTML formatting.
    # Args: 
    # Returns: Types::HTML!
    #it 'content_html' do
    #  query = <<-GRAPHQL
    #    { comment { contentHtml() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment')
    #  expect(result['contentHtml']).to eq comment.content_html
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
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

