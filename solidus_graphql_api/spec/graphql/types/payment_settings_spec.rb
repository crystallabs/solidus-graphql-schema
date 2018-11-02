# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::PaymentSettings' do
    let!(:payment_settings) { create(:payment_settings) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # acceptedCardBrands: List of the card brands which the shop accepts.
    # @return [[Types::CardBrand!]!]
    describe 'acceptedCardBrands' do
      let!(:query) { '{ payment_settings { acceptedCardBrands } }' }
      let!(:result) { { data: { payment_settings: { acceptedCardBrands: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # cardVaultUrl: The url pointing to the endpoint to vault credit cards.
    # @return [Types::URL!]
    describe 'cardVaultUrl' do
      let!(:query) { '{ payment_settings { cardVaultUrl } }' }
      let!(:result) { { data: { payment_settings: { cardVaultUrl: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # countryCode: The country where the shop is located.
    # @return [Types::CountryCode!]
    describe 'countryCode' do
      let!(:query) { '{ payment_settings { countryCode } }' }
      let!(:result) { { data: { payment_settings: { countryCode: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # currencyCode: The three-letter code for the currency that the shop accepts.
    # @return [Types::CurrencyCode!]
    describe 'currencyCode' do
      let!(:query) { '{ payment_settings { currencyCode } }' }
      let!(:result) { { data: { payment_settings: { currencyCode: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # solidusPaymentsAccountId: The shop’s Solidus Payments account id.
    # @return [Types::String]
    describe 'solidusPaymentsAccountId' do
      let!(:query) { '{ payment_settings { solidusPaymentsAccountId } }' }
      let!(:result) { { data: { payment_settings: { solidusPaymentsAccountId: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # supportedDigitalWallets: List of the digital wallets which the shop supports.
    # @return [[Types::DigitalWallet!]!]
    describe 'supportedDigitalWallets' do
      let!(:query) { '{ payment_settings { supportedDigitalWallets } }' }
      let!(:result) { { data: { payment_settings: { supportedDigitalWallets: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
