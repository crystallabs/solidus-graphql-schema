require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerCreate' do
    #let!(:customer_create_payload) {create(:customer_create_payload)}

    # Field: customer: The created customer object.
    # Args: 
    # Returns: Types::Customer
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { customer_create_payload { customer() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_create_payload')
    #  expect(result['customer']).to eq customer_create_payload.customer
    #end

    # Field: customerUserErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::CustomerUserError!]!
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

