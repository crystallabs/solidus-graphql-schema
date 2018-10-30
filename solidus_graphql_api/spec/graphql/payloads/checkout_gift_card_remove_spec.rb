require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutGiftCardRemove' do
    #let!(:checkout_gift_card_remove_payload) {create(:checkout_gift_card_remove_payload)}

    # @graphql checkout The updated checkout object.
    # @return [Types::Checkout!]
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_gift_card_remove_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_gift_card_remove_payload')
    #  expect(result['checkout']).to eq checkout_gift_card_remove_payload.checkout
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_gift_card_remove_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_gift_card_remove_payload')
    #  expect(result['userErrors']).to eq checkout_gift_card_remove_payload.user_errors
    #end

  end
end
