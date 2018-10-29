require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutEmailUpdate' do
    #let!(:checkout_email_update_payload) {create(:checkout_email_update_payload)}

    # @graphql checkout The checkout object with the updated email.
    # @return [Types::Checkout!]
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_email_update_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_email_update_payload')
    #  expect(result['checkout']).to eq checkout_email_update_payload.checkout
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_email_update_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_email_update_payload')
    #  expect(result['userErrors']).to eq checkout_email_update_payload.user_errors
    #end

  end
end

