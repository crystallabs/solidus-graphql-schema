require 'spec_helper'

describe 'Types' do
  describe 'CheckoutUserError' do
    #let!(:checkout_user_error) {create(:checkout_user_error)}

    # Field: code: Error code to uniquely identify the error.
    # Args: 
    # Returns: Types::CheckoutErrorCode
    #it 'code' do
    #  query = <<-GRAPHQL
    #    { checkout_user_error { code() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_user_error')
    #  expect(result['code']).to eq checkout_user_error.code
    #end

    # Field: field: Path to the input field which caused the error.
    # Args: 
    # Returns: [Types::String!]
    #it 'field' do
    #  query = <<-GRAPHQL
    #    { checkout_user_error { field() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_user_error')
    #  expect(result['field']).to eq checkout_user_error.field
    #end

    # Field: message: The error message.
    # Args: 
    # Returns: Types::String!
    #it 'message' do
    #  query = <<-GRAPHQL
    #    { checkout_user_error { message() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_user_error')
    #  expect(result['message']).to eq checkout_user_error.message
    #end

  end
end

