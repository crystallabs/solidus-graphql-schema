require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerReset' do
    #let!(:customer_reset_payload) {create(:customer_reset_payload)}

    # Field: customer: The customer object which was reset.
    # Args: 
    # Returns: Types::Customer
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { customer_reset_payload { customer() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_reset_payload')
    #  expect(result['customer']).to eq customer_reset_payload.customer
    #end

    # Field: customerAccessToken: A newly created customer access token object for the customer.
    # Args: 
    # Returns: Types::CustomerAccessToken
    #it 'customer_access_token' do
    #  query = <<-GRAPHQL
    #    { customer_reset_payload { customerAccessToken() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_reset_payload')
    #  expect(result['customerAccessToken']).to eq customer_reset_payload.customer_access_token
    #end

    # Field: userErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::UserError!]!
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_reset_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_reset_payload')
    #  expect(result['userErrors']).to eq customer_reset_payload.user_errors
    #end

  end
end

