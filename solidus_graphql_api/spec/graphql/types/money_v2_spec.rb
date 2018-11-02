# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::MoneyV2' do
    #let!(:money_v2) { create(:money_v2) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # amount: Decimal money amount.
    # @return [Types::Decimal!]
    describe 'amount' do
      let!(:query) { '{ money_v2 { amount } }' }
      let!(:result) { { data: { money_v2: { amount: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # currencyCode: Currency of the money.
    # @return [Types::CurrencyCode!]
    describe 'currencyCode' do
      let!(:query) { '{ money_v2 { currencyCode } }' }
      let!(:result) { { data: { money_v2: { currencyCode: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
