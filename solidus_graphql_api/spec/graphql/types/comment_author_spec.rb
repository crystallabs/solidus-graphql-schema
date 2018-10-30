require 'spec_helper'

describe 'Types' do
  describe 'CommentAuthor' do
    #let!(:comment_author) {create(:comment_author)}

    # @graphql email The author's email.
    # @return [Types::String!]
    #it 'email' do
    #  query = <<-GRAPHQL
    #    { comment_author { email() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'comment_author')
    #  expect(result['email']).to eq comment_author.email
    #end

    # @graphql name The author’s name.
    # @return [Types::String!]
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
