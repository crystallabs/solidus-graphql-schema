require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerActivate' do
    #let!(:customer_activate_payload) {create(:customer_activate_payload)}

    # Field: customer: The customer object.
    # Args: 
    # Returns: Types::Customer
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { customer_activate_payload { customer() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_activate_payload')
    #  expect(result['customer']).to eq customer_activate_payload.customer
    #end

    # Field: customerAccessToken: A newly created customer access token object for the customer.
    # Args: 
    # Returns: Types::CustomerAccessToken
    #it 'customer_access_token' do
    #  query = <<-GRAPHQL
    #    { customer_activate_payload { customerAccessToken() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_activate_payload')
    #  expect(result['customerAccessToken']).to eq customer_activate_payload.customer_access_token
    #end

    # Field: userErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::UserError!]!
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_activate_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_activate_payload')
    #  expect(result['userErrors']).to eq customer_activate_payload.user_errors
    #end

  end
end

