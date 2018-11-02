# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::DiscountAllocation' do
    let!(:discount_allocation) { create(:discount_allocation) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # allocatedAmount: Amount of discount allocated.
    # @return [Types::MoneyV2!]
    describe 'allocatedAmount' do
      let!(:query) { '{ discount_allocation { allocatedAmount } }' }
      let!(:result) { { data: { discount_allocation: { allocatedAmount: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # discountApplication: The discount this allocated amount originated from.
    # @return [Interfaces::DiscountApplication!]
    describe 'discountApplication' do
      let!(:query) { '{ discount_allocation { discountApplication } }' }
      let!(:result) { { data: { discount_allocation: { discountApplication: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
