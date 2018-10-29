require 'spec_helper'

describe 'Types' do
  describe 'CustomerAccessToken' do
    #let!(:customer_access_token) {create(:customer_access_token)}

    # Field: accessToken: The customer’s access token.
    # Args: 
    # Returns: Types::String!
    #it 'access_token' do
    #  query = <<-GRAPHQL
    #    { customer_access_token { accessToken() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_access_token')
    #  expect(result['accessToken']).to eq customer_access_token.access_token
    #end

    # Field: expiresAt: The date and time when the customer access token expires.
    # Args: 
    # Returns: Types::DateTime!
    #it 'expires_at' do
    #  query = <<-GRAPHQL
    #    { customer_access_token { expiresAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_access_token')
    #  expect(result['expiresAt']).to eq customer_access_token.expires_at
    #end

  end
end

