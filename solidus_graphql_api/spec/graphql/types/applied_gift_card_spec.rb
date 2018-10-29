require 'spec_helper'

describe 'Types' do
  describe 'AppliedGiftCard' do
    #let!(:applied_gift_card) {create(:applied_gift_card)}

    # @graphql amountUsed The amount that was used taken from the Gift Card by applying it.
    # @return [Types::Money!]
    #it 'amount_used' do
    #  query = <<-GRAPHQL
    #    { applied_gift_card { amountUsed() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'applied_gift_card')
    #  expect(result['amountUsed']).to eq applied_gift_card.amount_used
    #end

    # @graphql balance The amount left on the Gift Card.
    # @return [Types::Money!]
    #it 'balance' do
    #  query = <<-GRAPHQL
    #    { applied_gift_card { balance() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'applied_gift_card')
    #  expect(result['balance']).to eq applied_gift_card.balance
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { applied_gift_card { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'applied_gift_card')
    #  expect(result['id']).to eq applied_gift_card.id
    #end

    # @graphql lastCharacters The last characters of the Gift Card code
    # @return [Types::String!]
    #it 'last_characters' do
    #  query = <<-GRAPHQL
    #    { applied_gift_card { lastCharacters() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'applied_gift_card')
    #  expect(result['lastCharacters']).to eq applied_gift_card.last_characters
    #end

  end
end

