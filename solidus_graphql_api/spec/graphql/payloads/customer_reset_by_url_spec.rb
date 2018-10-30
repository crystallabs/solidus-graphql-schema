require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerResetByUrl' do
    #let!(:customer_reset_by_url_payload) {create(:customer_reset_by_url_payload)}

    # @graphql customer The customer object which was reset.
    # @return [Types::Customer]
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { customer_reset_by_url_payload { customer() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_reset_by_url_payload')
    #  expect(result['customer']).to eq customer_reset_by_url_payload.customer
    #end

    # @graphql customerAccessToken A newly created customer access token object for the customer.
    # @return [Types::CustomerAccessToken]
    #it 'customer_access_token' do
    #  query = <<-GRAPHQL
    #    { customer_reset_by_url_payload { customerAccessToken() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_reset_by_url_payload')
    #  expect(result['customerAccessToken']).to eq customer_reset_by_url_payload.customer_access_token
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_reset_by_url_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_reset_by_url_payload')
    #  expect(result['userErrors']).to eq customer_reset_by_url_payload.user_errors
    #end

  end
end

