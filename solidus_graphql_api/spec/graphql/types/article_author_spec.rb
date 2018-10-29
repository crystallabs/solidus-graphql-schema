require 'spec_helper'

describe 'Types' do
  describe 'ArticleAuthor' do
    #let!(:article_author) {create(:article_author)}

    # Field: bio: The author's bio.
    # Args: 
    # Returns: Types::String
    #it 'bio' do
    #  query = <<-GRAPHQL
    #    { article_author { bio() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article_author')
    #  expect(result['bio']).to eq article_author.bio
    #end

    # Field: email: The author’s email.
    # Args: 
    # Returns: Types::String!
    #it 'email' do
    #  query = <<-GRAPHQL
    #    { article_author { email() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article_author')
    #  expect(result['email']).to eq article_author.email
    #end

    # Field: firstName: The author's first name.
    # Args: 
    # Returns: Types::String!
    #it 'first_name' do
    #  query = <<-GRAPHQL
    #    { article_author { firstName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article_author')
    #  expect(result['firstName']).to eq article_author.first_name
    #end

    # Field: lastName: The author's last name.
    # Args: 
    # Returns: Types::String!
    #it 'last_name' do
    #  query = <<-GRAPHQL
    #    { article_author { lastName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article_author')
    #  expect(result['lastName']).to eq article_author.last_name
    #end

    # Field: name: The author's full name.
    # Args: 
    # Returns: Types::String!
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { article_author { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'article_author')
    #  expect(result['name']).to eq article_author.name
    #end

  end
end

