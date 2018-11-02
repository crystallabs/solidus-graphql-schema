# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::ShippingRate' do
    let!(:shipping_rate) { create(:shipping_rate) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # handle: Human-readable unique identifier for this shipping rate.
    # @return [Types::String!]
    describe 'handle' do
      let!(:query) { '{ shipping_rate { handle } }' }
      let!(:result) { { data: { shipping_rate: { handle: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # price: Price of this shipping rate.
    # @return [Types::Money!]
    describe 'price' do
      let!(:query) { '{ shipping_rate { price } }' }
      let!(:result) { { data: { shipping_rate: { price: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # title: Title of this shipping rate.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) { '{ shipping_rate { title } }' }
      let!(:result) { { data: { shipping_rate: { title: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
