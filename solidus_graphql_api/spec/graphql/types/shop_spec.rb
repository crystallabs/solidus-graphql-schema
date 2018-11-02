# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Shop' do
    #let!(:shop) { create(:store) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # collectionByHandle: Find a collection by its handle.
    # @param handle [Types::String!]
    # @return [Types::Collection]
    describe 'collectionByHandle' do
      let!(:query) { '{ shop { collectionByHandle } }' }
      let!(:result) { { data: { shop: { collectionByHandle: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # collections: List of the shop’s collections.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::CollectionSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Collection.connection_type!]
    describe 'collections' do
      let!(:query) { '{ shop { collections } }' }
      let!(:result) { { data: { shop: { collections: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # description: A description of the shop.
    # @return [Types::String]
    describe 'description' do
      let!(:query) { '{ shop { description } }' }
      let!(:result) { { data: { shop: { description: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # moneyFormat: A string representing the way currency is formatted when the currency isn’t specified.
    # @return [Types::String!]
    describe 'moneyFormat' do
      let!(:query) { '{ shop { moneyFormat } }' }
      let!(:result) { { data: { shop: { moneyFormat: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # name: The shop’s name.
    # @return [Types::String!]
    describe 'name' do
      let!(:query) { '{ shop { name } }' }
      let!(:result) { { data: { shop: { name: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # paymentSettings: Settings related to payments.
    # @return [Types::PaymentSettings!]
    describe 'paymentSettings' do
      let!(:query) { '{ shop { paymentSettings } }' }
      let!(:result) { { data: { shop: { paymentSettings: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # primaryDomain: The shop’s primary domain.
    # @return [Types::Domain!]
    describe 'primaryDomain' do
      let!(:query) { '{ shop { primaryDomain } }' }
      let!(:result) { { data: { shop: { primaryDomain: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # privacyPolicy: The shop’s privacy policy.
    # @return [Types::ShopPolicy]
    describe 'privacyPolicy' do
      let!(:query) { '{ shop { privacyPolicy } }' }
      let!(:result) { { data: { shop: { privacyPolicy: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # productByHandle: Find a product by its handle.
    # @param handle [Types::String!]
    # @return [Types::Product]
    describe 'productByHandle' do
      let!(:query) { '{ shop { productByHandle } }' }
      let!(:result) { { data: { shop: { productByHandle: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # productTypes: List of the shop’s product types.
    # @return [Types::String.connection_type!]
    describe 'productTypes' do
      let!(:query) { '{ shop { productTypes } }' }
      let!(:result) { { data: { shop: { productTypes: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # products: List of the shop’s products.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ProductSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Product.connection_type!]
    describe 'products' do
      let!(:query) { '{ shop { products } }' }
      let!(:result) { { data: { shop: { products: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # refundPolicy: The shop’s refund policy.
    # @return [Types::ShopPolicy]
    describe 'refundPolicy' do
      let!(:query) { '{ shop { refundPolicy } }' }
      let!(:result) { { data: { shop: { refundPolicy: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # shipsToCountries: Countries that the shop ships to.
    # @return [[Types::CountryCode!]!]
    describe 'shipsToCountries' do
      let!(:query) { '{ shop { shipsToCountries } }' }
      let!(:result) { { data: { shop: { shipsToCountries: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # termsOfService: The shop’s terms of service.
    # @return [Types::ShopPolicy]
    describe 'termsOfService' do
      let!(:query) { '{ shop { termsOfService } }' }
      let!(:result) { { data: { shop: { termsOfService: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
