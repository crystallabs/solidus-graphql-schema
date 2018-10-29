require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutCustomerAssociate' do
    #let!(:checkout_customer_associate_payload) {create(:checkout_customer_associate_payload)}

    # Field: checkout: The updated checkout object.
    # Args: 
    # Returns: Types::Checkout!
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_customer_associate_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_customer_associate_payload')
    #  expect(result['checkout']).to eq checkout_customer_associate_payload.checkout
    #end

    # Field: customer: The associated customer object.
    # Args: 
    # Returns: Types::Customer
    #it 'customer' do
    #  query = <<-GRAPHQL
    #    { checkout_customer_associate_payload { customer() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_customer_associate_payload')
    #  expect(result['customer']).to eq checkout_customer_associate_payload.customer
    #end

    # Field: userErrors: List of errors that occurred executing the mutation.
    # Args: 
    # Returns: [Types::UserError!]!
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_customer_associate_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_customer_associate_payload')
    #  expect(result['userErrors']).to eq checkout_customer_associate_payload.user_errors
    #end

  end
end

