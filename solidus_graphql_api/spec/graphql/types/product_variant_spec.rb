# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::ProductVariant' do
    let!(:product_variant) { create(:product_variant) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # availableForSale: Indicates if the product variant is available for sale.
    # @return [Types::Boolean!]
    describe 'availableForSale' do
      let!(:query) { '{ product_variant { availableForSale } }' }
      let!(:result) { { data: { product_variant: { availableForSale: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # compareAtPrice: The compare at price of the variant. This can be used to mark a variant as on sale, when `compareAtPrice` is higher than `price`.
    # @return [Types::Money]
    describe 'compareAtPrice' do
      let!(:query) { '{ product_variant { compareAtPrice } }' }
      let!(:result) { { data: { product_variant: { compareAtPrice: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ product_variant { id } }' }
      let!(:result) { { data: { product_variant: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # image: Image associated with the product variant. This field falls back to the product image if no image is available.
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @return [Types::Image]
    describe 'image' do
      let!(:query) { '{ product_variant { image } }' }
      let!(:result) { { data: { product_variant: { image: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # price: The product variant’s price.
    # @return [Types::Money!]
    describe 'price' do
      let!(:query) { '{ product_variant { price } }' }
      let!(:result) { { data: { product_variant: { price: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # product: The product object that the product variant belongs to.
    # @return [Types::Product!]
    describe 'product' do
      let!(:query) { '{ product_variant { product } }' }
      let!(:result) { { data: { product_variant: { product: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # selectedOptions: List of product options applied to the variant.
    # @return [[Types::SelectedOption!]!]
    describe 'selectedOptions' do
      let!(:query) { '{ product_variant { selectedOptions } }' }
      let!(:result) { { data: { product_variant: { selectedOptions: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # sku: The SKU (stock keeping unit) associated with the variant.
    # @return [Types::String]
    describe 'sku' do
      let!(:query) { '{ product_variant { sku } }' }
      let!(:result) { { data: { product_variant: { sku: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # title: The product variant’s title.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) { '{ product_variant { title } }' }
      let!(:result) { { data: { product_variant: { title: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # weight: The weight of the product variant in the unit system specified with `weight_unit`.
    # @return [Types::Float]
    describe 'weight' do
      let!(:query) { '{ product_variant { weight } }' }
      let!(:result) { { data: { product_variant: { weight: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # weightUnit: Unit of measurement for weight.
    # @return [Types::WeightUnit!]
    describe 'weightUnit' do
      let!(:query) { '{ product_variant { weightUnit } }' }
      let!(:result) { { data: { product_variant: { weightUnit: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
