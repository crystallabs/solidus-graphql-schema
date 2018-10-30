require 'spec_helper'

describe 'Types' do
  describe 'CustomerUserError' do
    #let!(:customer_user_error) {create(:customer_user_error)}

    # @graphql code Error code to uniquely identify the error.
    # @return [Types::CustomerErrorCode]
    #it 'code' do
    #  query = <<-GRAPHQL
    #    { customer_user_error { code() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_user_error')
    #  expect(result['code']).to eq customer_user_error.code
    #end

    # @graphql field Path to the input field which caused the error.
    # @return [[Types::String!]]
    #it 'field' do
    #  query = <<-GRAPHQL
    #    { customer_user_error { field() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_user_error')
    #  expect(result['field']).to eq customer_user_error.field
    #end

    # @graphql message The error message.
    # @return [Types::String!]
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
