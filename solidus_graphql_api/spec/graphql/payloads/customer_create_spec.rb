require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerCreate' do
    #let!(:customer_create_payload) {create(:customer_create_payload)}

    # @graphql customer The created customer object.
    # @return [Types::Customer]
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { customer_create_payload { customer() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_create_payload')
    #  expect(result['customer']).to eq customer_create_payload.customer
    #end

    # @graphql customerUserErrors List of errors that occurred executing the mutation.
    # @return [[Types::CustomerUserError!]!]
    #it 'customer_user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_create_payload { customerUserErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_create_payload')
    #  expect(result['customerUserErrors']).to eq customer_create_payload.customer_user_errors
    #end

  end
end
