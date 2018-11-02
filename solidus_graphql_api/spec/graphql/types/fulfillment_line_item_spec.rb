# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::FulfillmentLineItem' do
    let!(:fulfillment_line_item) { create(:fulfillment_line_item) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # lineItem: The associated order's line item.
    # @return [Types::OrderLineItem!]
    describe 'lineItem' do
      let!(:query) { '{ fulfillment_line_item { lineItem } }' }
      let!(:result) { { data: { fulfillment_line_item: { lineItem: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # quantity: The amount fulfilled in this fulfillment.
    # @return [Types::Int!]
    describe 'quantity' do
      let!(:query) { '{ fulfillment_line_item { quantity } }' }
      let!(:result) { { data: { fulfillment_line_item: { quantity: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
