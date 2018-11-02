# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Product' do
    #let!(:product) { create(:product) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # availableForSale: Indicates if at least one product variant is available for sale.
    # @return [Types::Boolean!]
    describe 'availableForSale' do
      let!(:query) { '{ product { availableForSale } }' }
      let!(:result) { { data: { product: { availableForSale: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # collections: List of collections a product belongs to.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::Collection.connection_type!]
    describe 'collections' do
      let!(:query) { '{ product { collections } }' }
      let!(:result) { { data: { product: { collections: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # createdAt: The date and time when the product was created.
    # @return [Types::DateTime!]
    describe 'createdAt' do
      let!(:query) { '{ product { createdAt } }' }
      let!(:result) { { data: { product: { createdAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # description: Stripped description of the product, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    describe 'description' do
      let!(:query) { '{ product { description } }' }
      let!(:result) { { data: { product: { description: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # descriptionHtml: The description of the product, complete with HTML formatting.
    # @return [Types::HTML!]
    describe 'descriptionHtml' do
      let!(:query) { '{ product { descriptionHtml } }' }
      let!(:result) { { data: { product: { descriptionHtml: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # handle: A human-friendly unique string for the Product automatically generated from its title. They are used by the Liquid templating language to refer to objects. 
    # @return [Types::String!]
    describe 'handle' do
      let!(:query) { '{ product { handle } }' }
      let!(:result) { { data: { product: { handle: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ product { id } }' }
      let!(:result) { { data: { product: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # images: List of images associated with the product.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ProductImageSortKeys] ('POSITION')
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @return [Types::Image.connection_type!]
    describe 'images' do
      let!(:query) { '{ product { images } }' }
      let!(:result) { { data: { product: { images: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # onlineStoreUrl: The online store URL for the product. A value of `null` indicates that the product is not published to the Online Store sales channel. 
    # @return [Types::URL]
    describe 'onlineStoreUrl' do
      let!(:query) { '{ product { onlineStoreUrl } }' }
      let!(:result) { { data: { product: { onlineStoreUrl: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # options: List of custom product options (maximum of 3 per product).
    # @param first [Types::Int]
    # @return [[Types::ProductOption!]!]
    describe 'options' do
      let!(:query) { '{ product { options } }' }
      let!(:result) { { data: { product: { options: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # priceRange: The price range.
    # @return [Types::ProductPriceRange!]
    describe 'priceRange' do
      let!(:query) { '{ product { priceRange } }' }
      let!(:result) { { data: { product: { priceRange: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # productType: A categorization that a product can be tagged with, commonly used for filtering and searching.
    # @return [Types::String!]
    describe 'productType' do
      let!(:query) { '{ product { productType } }' }
      let!(:result) { { data: { product: { productType: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # publishedAt: The date and time when the product was published to the channel.
    # @return [Types::DateTime!]
    describe 'publishedAt' do
      let!(:query) { '{ product { publishedAt } }' }
      let!(:result) { { data: { product: { publishedAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # tags: A categorization that a product can be tagged with, commonly used for filtering and searching. Each comma-separated tag has a character limit of 255. 
    # @return [[Types::String!]!]
    describe 'tags' do
      let!(:query) { '{ product { tags } }' }
      let!(:result) { { data: { product: { tags: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # title: The product’s title.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) { '{ product { title } }' }
      let!(:result) { { data: { product: { title: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # updatedAt: The date and time when the product was last modified.
    # @return [Types::DateTime!]
    describe 'updatedAt' do
      let!(:query) { '{ product { updatedAt } }' }
      let!(:result) { { data: { product: { updatedAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # variantBySelectedOptions: Find a product’s variant based on its selected options. This is useful for converting a user’s selection of product options into a single matching variant. If there is not a variant for the selected options, `null` will be returned. 
    # @param selected_options [[Inputs::SelectedOption!]!]
    # @return [Types::ProductVariant]
    describe 'variantBySelectedOptions' do
      let!(:query) { '{ product { variantBySelectedOptions } }' }
      let!(:result) { { data: { product: { variantBySelectedOptions: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # variants: List of the product’s variants.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ProductVariantSortKeys] ('POSITION')
    # @return [Types::ProductVariant.connection_type!]
    describe 'variants' do
      let!(:query) { '{ product { variants } }' }
      let!(:result) { { data: { product: { variants: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # vendor: The product’s vendor name.
    # @return [Types::String!]
    describe 'vendor' do
      let!(:query) { '{ product { vendor } }' }
      let!(:result) { { data: { product: { vendor: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
