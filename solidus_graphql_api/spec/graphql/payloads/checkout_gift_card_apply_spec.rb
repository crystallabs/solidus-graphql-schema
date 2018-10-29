require 'spec_helper'

describe 'Payloads' do
  describe 'CheckoutGiftCardApply' do
    #let!(:checkout_gift_card_apply_payload) {create(:checkout_gift_card_apply_payload)}

    # @graphql checkout The updated checkout object.
    # @return [Types::Checkout!]
    #it 'checkout' do
    #  query = <<-GRAPHQL
    #    { checkout_gift_card_apply_payload { checkout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_gift_card_apply_payload')
    #  expect(result['checkout']).to eq checkout_gift_card_apply_payload.checkout
    #end

    # @graphql userErrors List of errors that occurred executing the mutation.
    # @return [[Types::UserError!]!]
    #it 'user_errors' do
    #  query = <<-GRAPHQL
    #    { checkout_gift_card_apply_payload { userErrors() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout_gift_card_apply_payload')
    #  expect(result['userErrors']).to eq checkout_gift_card_apply_payload.user_errors
    #end

  end
end

