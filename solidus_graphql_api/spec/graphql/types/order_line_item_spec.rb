# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::OrderLineItem' do
    let!(:order_line_item) { create(:order_line_item) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # customAttributes: List of custom attributes associated to the line item.
    # @return [[Types::Attribute!]!]
    describe 'customAttributes' do
      let!(:query) { '{ order_line_item { customAttributes } }' }
      let!(:result) { { data: { order_line_item: { customAttributes: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # discountAllocations: The discounts that have been allocated onto the order line item by discount applications.
    # @return [[Types::DiscountAllocation!]!]
    describe 'discountAllocations' do
      let!(:query) { '{ order_line_item { discountAllocations } }' }
      let!(:result) { { data: { order_line_item: { discountAllocations: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # quantity: The number of products variants associated to the line item.
    # @return [Types::Int!]
    describe 'quantity' do
      let!(:query) { '{ order_line_item { quantity } }' }
      let!(:result) { { data: { order_line_item: { quantity: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # title: The title of the product combined with title of the variant.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) { '{ order_line_item { title } }' }
      let!(:result) { { data: { order_line_item: { title: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # variant: The product variant object associated to the line item.
    # @return [Types::ProductVariant]
    describe 'variant' do
      let!(:query) { '{ order_line_item { variant } }' }
      let!(:result) { { data: { order_line_item: { variant: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
