require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerAccessTokenCreate' do
    #let!(:customer_access_token_create_payload) {create(:customer_access_token_create_payload)}

    # @graphql customerAccessToken The newly created customer access token object.
    # @return [Types::CustomerAccessToken]
    #it 'customer_access_token' do
    #  query = <<-GRAPHQL
    #    { customer_access_token_create_payload { customerAccessToken() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_access_token_create_payload')
    #  expect(result['customerAccessToken']).to eq customer_access_token_create_payload.customer_access_token
    #end

    # @graphql customerUserErrors List of errors that occurred executing the mutation.
    # @return [[Types::CustomerUserError!]!]
    #it 'customer_user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_access_token_create_payload { customerUserErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_access_token_create_payload')
    #  expect(result['customerUserErrors']).to eq customer_access_token_create_payload.customer_user_errors
    #end

  end
end
