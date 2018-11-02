# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::CreditCard' do
    let!(:credit_card) { create(:credit_card) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # brand
    # @return [Types::String]
    describe 'brand' do
      let!(:query) { '{ credit_card { brand } }' }
      let!(:result) { { data: { credit_card: { brand: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # expiryMonth
    # @return [Types::Int]
    describe 'expiryMonth' do
      let!(:query) { '{ credit_card { expiryMonth } }' }
      let!(:result) { { data: { credit_card: { expiryMonth: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # expiryYear
    # @return [Types::Int]
    describe 'expiryYear' do
      let!(:query) { '{ credit_card { expiryYear } }' }
      let!(:result) { { data: { credit_card: { expiryYear: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # firstDigits
    # @return [Types::String]
    describe 'firstDigits' do
      let!(:query) { '{ credit_card { firstDigits } }' }
      let!(:result) { { data: { credit_card: { firstDigits: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # firstName
    # @return [Types::String]
    describe 'firstName' do
      let!(:query) { '{ credit_card { firstName } }' }
      let!(:result) { { data: { credit_card: { firstName: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # lastDigits
    # @return [Types::String]
    describe 'lastDigits' do
      let!(:query) { '{ credit_card { lastDigits } }' }
      let!(:result) { { data: { credit_card: { lastDigits: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # lastName
    # @return [Types::String]
    describe 'lastName' do
      let!(:query) { '{ credit_card { lastName } }' }
      let!(:result) { { data: { credit_card: { lastName: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # maskedNumber: Masked credit card number with only the last 4 digits displayed
    # @return [Types::String]
    describe 'maskedNumber' do
      let!(:query) { '{ credit_card { maskedNumber } }' }
      let!(:result) { { data: { credit_card: { maskedNumber: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
