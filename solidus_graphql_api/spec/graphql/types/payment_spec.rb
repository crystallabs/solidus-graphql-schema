# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Payment' do
    #let!(:payment) { create(:payment) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # amount: The amount of the payment.
    # @return [Types::Money!]
    describe 'amount' do
      let!(:query) { '{ payment { amount } }' }
      let!(:result) { { data: { payment: { amount: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # billingAddress: The billing address for the payment.
    # @return [Types::MailingAddress]
    describe 'billingAddress' do
      let!(:query) { '{ payment { billingAddress } }' }
      let!(:result) { { data: { payment: { billingAddress: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # checkout: The checkout to which the payment belongs.
    # @return [Types::Checkout!]
    describe 'checkout' do
      let!(:query) { '{ payment { checkout } }' }
      let!(:result) { { data: { payment: { checkout: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # creditCard: The credit card used for the payment in the case of direct payments.
    # @return [Types::CreditCard]
    describe 'creditCard' do
      let!(:query) { '{ payment { creditCard } }' }
      let!(:result) { { data: { payment: { creditCard: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # errorMessage: An message describing a processing error during asynchronous processing.
    # @return [Types::String]
    describe 'errorMessage' do
      let!(:query) { '{ payment { errorMessage } }' }
      let!(:result) { { data: { payment: { errorMessage: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ payment { id } }' }
      let!(:result) { { data: { payment: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # idempotencyKey: A client-side generated token to identify a payment and perform idempotent operations.
    # @return [Types::String]
    describe 'idempotencyKey' do
      let!(:query) { '{ payment { idempotencyKey } }' }
      let!(:result) { { data: { payment: { idempotencyKey: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # ready: Whether or not the payment is still processing asynchronously.
    # @return [Types::Boolean!]
    describe 'ready' do
      let!(:query) { '{ payment { ready } }' }
      let!(:result) { { data: { payment: { ready: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # test: A flag to indicate if the payment is to be done in test mode for gateways that support it.
    # @return [Types::Boolean!]
    describe 'test' do
      let!(:query) { '{ payment { test } }' }
      let!(:result) { { data: { payment: { test: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # transaction: The actual transaction recorded by Solidus after having processed the payment with the gateway.
    # @return [Types::Transaction]
    describe 'transaction' do
      let!(:query) { '{ payment { transaction } }' }
      let!(:result) { { data: { payment: { transaction: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
