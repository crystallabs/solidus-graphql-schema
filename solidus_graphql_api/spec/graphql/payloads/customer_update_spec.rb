require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerUpdate' do
    #let!(:customer_update_payload) {create(:customer_update_payload)}

    # Field: customer: The updated customer object.
    # Args: 
    # Returns: Types::Customer
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { customer_update_payload { customer() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_update_payload')
    #  expect(result['customer']).to eq customer_update_payload.customer
    #end

    # Field: customerAccessToken: The newly created customer access token. If the customer's password is updated, all previous access tokens (including the one used to perform this mutation) become invalid, and a new token is generated. 
    # Args: 
    # Returns: Types::CustomerAccessToken
    #it 'customer_access_token' do
    #  query = <<-GRAPHQL
    #    { customer_update_payload { customerAccessToken() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_update_payload')
    #  expect(result['customerAccessToken']).to eq customer_update_payload.customer_access_token
    #end

    # Field: customerUserErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::CustomerUserError!]!
    #it 'customer_user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_update_payload { customerUserErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_update_payload')
    #  expect(result['customerUserErrors']).to eq customer_update_payload.customer_user_errors
    #end

  end
end

