require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerAccessTokenDelete' do
    #let!(:customer_access_token_delete_payload) {create(:customer_access_token_delete_payload)}

    # @graphql deletedAccessToken The destroyed access token.
    # @return [Types::String]
    #it 'deleted_access_token' do
    #  query = <<-GRAPHQL
    #    { customer_access_token_delete_payload { deletedAccessToken() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_access_token_delete_payload')
    #  expect(result['deletedAccessToken']).to eq customer_access_token_delete_payload.deleted_access_token
    #end

    # @graphql deletedCustomerAccessTokenId ID of the destroyed customer access token.
    # @return [Types::String]
    #it 'deleted_customer_access_token_id' do
    #  query = <<-GRAPHQL
    #    { customer_access_token_delete_payload { deletedCustomerAccessTokenId() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_access_token_delete_payload')
    #  expect(result['deletedCustomerAccessTokenId']).to eq customer_access_token_delete_payload.deleted_customer_access_token_id
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_access_token_delete_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_access_token_delete_payload')
    #  expect(result['userErrors']).to eq customer_access_token_delete_payload.user_errors
    #end

  end
end
