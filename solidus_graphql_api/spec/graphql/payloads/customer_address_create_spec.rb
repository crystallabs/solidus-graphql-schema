require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerAddressCreate' do
    #let!(:customer_address_create_payload) {create(:customer_address_create_payload)}

    # Field: customerAddress: The new customer address object.
    # Args: 
    # Returns: Types::MailingAddress
    #it 'customer_address' do
    #  query = <<-GRAPHQL
    #    { customer_address_create_payload { customerAddress() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_address_create_payload')
    #  expect(result['customerAddress']).to eq customer_address_create_payload.customer_address
    #end

    # Field: userErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::UserError!]!
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_address_create_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_address_create_payload')
    #  expect(result['userErrors']).to eq customer_address_create_payload.user_errors
    #end

  end
end

