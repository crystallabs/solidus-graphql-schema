# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::ProductOption' do
    let!(:product_option) { create(:product_option) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ product_option { id } }' }
      let!(:result) { { data: { product_option: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # name: The product option’s name.
    # @return [Types::String!]
    describe 'name' do
      let!(:query) { '{ product_option { name } }' }
      let!(:result) { { data: { product_option: { name: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # values: The corresponding value to the product option name.
    # @return [[Types::String!]!]
    describe 'values' do
      let!(:query) { '{ product_option { values } }' }
      let!(:result) { { data: { product_option: { values: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
