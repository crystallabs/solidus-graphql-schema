require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutCustomerDisassociate' do
    #let!(:checkout_customer_disassociate_payload) {create(:checkout_customer_disassociate_payload)}

    # Field: checkout: The updated checkout object.
    # Args: 
    # Returns: Types::Checkout!
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_customer_disassociate_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_customer_disassociate_payload')
    #  expect(result['checkout']).to eq checkout_customer_disassociate_payload.checkout
    #end

    # Field: userErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::UserError!]!
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_customer_disassociate_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_customer_disassociate_payload')
    #  expect(result['userErrors']).to eq checkout_customer_disassociate_payload.user_errors
    #end

  end
end

