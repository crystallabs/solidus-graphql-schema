require 'spec_helper'

describe 'Types' do
  describe 'CommentAuthor' do
    #let!(:comment_author) {create(:comment_author)}

    # Field: email: The author's email.
    # Args: 
    # Returns: Types::String!
    #it 'email' do
    #  query = <<-GRAPHQL
    #    { comment_author { email() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment_author')
    #  expect(result['email']).to eq comment_author.email
    #end

    # Field: name: The author’s name.
    # Args: 
    # Returns: Types::String!
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { comment_author { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment_author')
    #  expect(result['name']).to eq comment_author.name
    #end

  end
end

