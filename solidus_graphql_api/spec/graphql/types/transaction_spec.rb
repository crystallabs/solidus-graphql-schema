# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Transaction' do
    #let!(:transaction) { create(:transaction) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # amount: The amount of money that the transaction was for.
    # @return [Types::Money!]
    describe 'amount' do
      let!(:query) { '{ transaction { amount } }' }
      let!(:result) { { data: { transaction: { amount: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # kind: The kind of the transaction.
    # @return [Types::TransactionKind!]
    describe 'kind' do
      let!(:query) { '{ transaction { kind } }' }
      let!(:result) { { data: { transaction: { kind: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # status: The status of the transaction
    # @return [Types::TransactionStatus!]
    describe 'status' do
      let!(:query) { '{ transaction { status } }' }
      let!(:result) { { data: { transaction: { status: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # test: Whether the transaction was done in test mode or not
    # @return [Types::Boolean!]
    describe 'test' do
      let!(:query) { '{ transaction { test } }' }
      let!(:result) { { data: { transaction: { test: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
