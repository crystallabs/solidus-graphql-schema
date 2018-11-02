# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::AppliedGiftCard' do
    let!(:applied_gift_card) { create(:applied_gift_card) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # amountUsed: The amount that was used taken from the Gift Card by applying it.
    # @return [Types::Money!]
    describe 'amountUsed' do
      let!(:query) { '{ applied_gift_card { amountUsed } }' }
      let!(:result) { { data: { applied_gift_card: { amountUsed: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # balance: The amount left on the Gift Card.
    # @return [Types::Money!]
    describe 'balance' do
      let!(:query) { '{ applied_gift_card { balance } }' }
      let!(:result) { { data: { applied_gift_card: { balance: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ applied_gift_card { id } }' }
      let!(:result) { { data: { applied_gift_card: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # lastCharacters: The last characters of the Gift Card code
    # @return [Types::String!]
    describe 'lastCharacters' do
      let!(:query) { '{ applied_gift_card { lastCharacters } }' }
      let!(:result) { { data: { applied_gift_card: { lastCharacters: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
