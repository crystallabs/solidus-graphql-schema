require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerAccessTokenRenew' do
    #let!(:customer_access_token_renew_payload) {create(:customer_access_token_renew_payload)}

    # @graphql customerAccessToken The renewed customer access token object.
    # @return [Types::CustomerAccessToken]
    #it 'customer_access_token' do
    #  query = <<-GRAPHQL
    #    { customer_access_token_renew_payload { customerAccessToken() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_access_token_renew_payload')
    #  expect(result['customerAccessToken']).to eq customer_access_token_renew_payload.customer_access_token
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_access_token_renew_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_access_token_renew_payload')
    #  expect(result['userErrors']).to eq customer_access_token_renew_payload.user_errors
    #end

  end
end

