require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerActivate' do
    #let!(:customer_activate_payload) {create(:customer_activate_payload)}

    # @graphql customer The customer object.
    # @return [Types::Customer]
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { customer_activate_payload { customer() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_activate_payload')
    #  expect(result['customer']).to eq customer_activate_payload.customer
    #end

    # @graphql customerAccessToken A newly created customer access token object for the customer.
    # @return [Types::CustomerAccessToken]
    #it 'customer_access_token' do
    #  query = <<-GRAPHQL
    #    { customer_activate_payload { customerAccessToken() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_activate_payload')
    #  expect(result['customerAccessToken']).to eq customer_activate_payload.customer_access_token
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
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

