require 'spec_helper'

describe 'Payloads' do
  describe 'CustomerDefaultAddressUpdate' do
    #let!(:customer_default_address_update_payload) {create(:customer_default_address_update_payload)}

    # @graphql customer The updated customer object.
    # @return [Types::Customer]
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { customer_default_address_update_payload { customer() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_default_address_update_payload')
    #  expect(result['customer']).to eq customer_default_address_update_payload.customer
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { customer_default_address_update_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer_default_address_update_payload')
    #  expect(result['userErrors']).to eq customer_default_address_update_payload.user_errors
    #end

  end
end
