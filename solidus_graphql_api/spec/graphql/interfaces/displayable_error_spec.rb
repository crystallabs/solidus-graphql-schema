require 'spec_helper'

describe 'Interfaces' do
  describe 'DisplayableError' do
    #let!(:displayable_error) {create(:displayable_error)}

    # @graphql field Path to the input field which caused the error.
    # @return [[Types::String!]]
    #it 'field' do
    #  query = <<-GRAPHQL
    #    { displayable_error { field() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'displayable_error')
    #  expect(result['field']).to eq displayable_error.field
    #end

    # @graphql message The error message.
    # @return [Types::String!]
    #it 'message' do
    #  query = <<-GRAPHQL
    #    { displayable_error { message() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'displayable_error')
    #  expect(result['message']).to eq displayable_error.message
    #end

  end
end
