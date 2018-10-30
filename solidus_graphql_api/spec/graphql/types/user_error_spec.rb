require 'spec_helper'

describe 'Types' do
  describe 'UserError' do
    #let!(:user_error) {create(:user_error)}

    # @graphql field Path to the input field which caused the error.
    # @return [[Types::String!]]
    #it 'field' do
    #  query = <<-GRAPHQL
    #    { user_error { field() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'user_error')
    #  expect(result['field']).to eq user_error.field
    #end

    # @graphql message The error message.
    # @return [Types::String!]
    #it 'message' do
    #  query = <<-GRAPHQL
    #    { user_error { message() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'user_error')
    #  expect(result['message']).to eq user_error.message
    #end

  end
end

