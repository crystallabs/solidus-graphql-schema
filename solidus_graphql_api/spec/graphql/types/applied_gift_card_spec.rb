require 'spec_helper'

describe 'Types' do
  describe 'AppliedGiftCard' do
    #let!(:applied_gift_card) {create(:applied_gift_card)}

    # Field: amountUsed: The amount that was used taken from the Gift Card by applying it.
    # Args: 
    # Returns: Types::Money!
    #it 'amount_used' do
    #  query = <<-GRAPHQL
    #    { applied_gift_card { amountUsed() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'applied_gift_card')
    #  expect(result['amountUsed']).to eq applied_gift_card.amount_used
    #end

    # Field: balance: The amount left on the Gift Card.
    # Args: 
    # Returns: Types::Money!
    #it 'balance' do
    #  query = <<-GRAPHQL
    #    { applied_gift_card { balance() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'applied_gift_card')
    #  expect(result['balance']).to eq applied_gift_card.balance
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { applied_gift_card { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'applied_gift_card')
    #  expect(result['id']).to eq applied_gift_card.id
    #end

    # Field: lastCharacters: The last characters of the Gift Card code
    # Args: 
    # Returns: Types::String!
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

