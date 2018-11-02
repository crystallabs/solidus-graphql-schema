# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::CheckoutLineItem' do
    #let!(:checkout_line_item) { create(:checkout_line_item) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # customAttributes: Extra information in the form of an array of Key-Value pairs about the line item.
    # @return [[Types::Attribute!]!]
    describe 'customAttributes' do
      let!(:query) { '{ checkout_line_item { customAttributes } }' }
      let!(:result) { { data: { checkout_line_item: { customAttributes: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # discountAllocations: The discounts that have been allocated onto the checkout line item by discount applications.
    # @return [[Types::DiscountAllocation!]!]
    describe 'discountAllocations' do
      let!(:query) { '{ checkout_line_item { discountAllocations } }' }
      let!(:result) { { data: { checkout_line_item: { discountAllocations: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ checkout_line_item { id } }' }
      let!(:result) { { data: { checkout_line_item: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # quantity: The quantity of the line item.
    # @return [Types::Int!]
    describe 'quantity' do
      let!(:query) { '{ checkout_line_item { quantity } }' }
      let!(:result) { { data: { checkout_line_item: { quantity: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # title: Title of the line item. Defaults to the product's title.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) { '{ checkout_line_item { title } }' }
      let!(:result) { { data: { checkout_line_item: { title: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # variant: Product variant of the line item.
    # @return [Types::ProductVariant]
    describe 'variant' do
      let!(:query) { '{ checkout_line_item { variant } }' }
      let!(:result) { { data: { checkout_line_item: { variant: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
