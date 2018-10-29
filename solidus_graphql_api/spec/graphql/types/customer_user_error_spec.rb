require 'spec_helper'

describe 'Types' do
  describe 'CustomerUserError' do
    #let!(:customer_user_error) {create(:customer_user_error)}

    # Field: code: Error code to uniquely identify the error.
    # Args: 
    # Returns: Types::CustomerErrorCode
    #it 'code' do
    #  query = <<-GRAPHQL
    #    { customer_user_error { code() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_user_error')
    #  expect(result['code']).to eq customer_user_error.code
    #end

    # Field: field: Path to the input field which caused the error.
    # Args: 
    # Returns: [Types::String!]
    #it 'field' do
    #  query = <<-GRAPHQL
    #    { customer_user_error { field() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_user_error')
    #  expect(result['field']).to eq customer_user_error.field
    #end

    # Field: message: The error message.
    # Args: 
    # Returns: Types::String!
    #it 'message' do
    #  query = <<-GRAPHQL
    #    { customer_user_error { message() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_user_error')
    #  expect(result['message']).to eq customer_user_error.message
    #end

  end
end

