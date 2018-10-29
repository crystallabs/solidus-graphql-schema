require 'spec_helper'

describe 'Types' do
  describe 'UserError' do
    #let!(:user_error) {create(:user_error)}

    # Field: field: Path to the input field which caused the error.
    # Args: 
    # Returns: [Types::String!]
    #it 'field' do
    #  query = <<-GRAPHQL
    #    { user_error { field() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'user_error')
    #  expect(result['field']).to eq user_error.field
    #end

    # Field: message: The error message.
    # Args: 
    # Returns: Types::String!
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

