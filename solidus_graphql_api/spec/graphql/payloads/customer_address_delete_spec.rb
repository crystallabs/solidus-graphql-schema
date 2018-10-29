require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerAddressDelete' do
    #let!(:customer_address_delete_payload) {create(:customer_address_delete_payload)}

    # Field: deletedCustomerAddressId: ID of the deleted customer address.
    # Args: 
    # Returns: Types::String
    #it 'deleted_customer_address_id' do
    #  query = <<-GRAPHQL
    #    { customer_address_delete_payload { deletedCustomerAddressId() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_address_delete_payload')
    #  expect(result['deletedCustomerAddressId']).to eq customer_address_delete_payload.deleted_customer_address_id
    #end

    # Field: userErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::UserError!]!
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_address_delete_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_address_delete_payload')
    #  expect(result['userErrors']).to eq customer_address_delete_payload.user_errors
    #end

  end
end

