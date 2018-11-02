# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::SelectedOption' do
    let!(:selected_option) { create(:selected_option) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # name: The product option’s name.
    # @return [Types::String!]
    describe 'name' do
      let!(:query) { '{ selected_option { name } }' }
      let!(:result) { { data: { selected_option: { name: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # value: The product option’s value.
    # @return [Types::String!]
    describe 'value' do
      let!(:query) { '{ selected_option { value } }' }
      let!(:result) { { data: { selected_option: { value: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
