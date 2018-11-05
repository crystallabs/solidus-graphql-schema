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
      let!(:query) {
        %q{
          query {
            productVariant {
              availableForSale
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # compareAtPrice: The compare at price of the variant. This can be used to mark a variant as on sale, when `compareAtPrice` is higher than `price`.
    # @return [Types::Money]
    describe 'compareAtPrice' do
      let!(:query) {
        %q{
          query {
            productVariant {
              compareAtPrice
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) {
        %q{
          query {
            productVariant {
              id
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
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
      let!(:query) {
        %q{
          query {
            productVariant {
              image(
                maxWidth: Int,
                maxHeight: Int,
                crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                scale: Int
              ) {
                altText
                id
                originalSrc
                src
                transformedSrc(
                  maxWidth: Int,
                  maxHeight: Int,
                  crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                  scale: Int,
                  preferredContentType: "PNG | JPG | WEBP"
                )
              }
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # price: The product variant’s price.
    # @return [Types::Money!]
    describe 'price' do
      let!(:query) {
        %q{
          query {
            productVariant {
              price
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # product: The product object that the product variant belongs to.
    # @return [Types::Product!]
    describe 'product' do
      let!(:query) {
        %q{
          query {
            productVariant {
              product {
                availableForSale
                collections(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false
                ) {
                  description(truncateAt: Int)
                  descriptionHtml
                  handle
                  id
                  image(
                    maxWidth: Int,
                    maxHeight: Int,
                    crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                    scale: Int
                  ) {
                    altText
                    id
                    originalSrc
                    src
                    transformedSrc(
                      maxWidth: Int,
                      maxHeight: Int,
                      crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                      scale: Int,
                      preferredContentType: "PNG | JPG | WEBP"
                    )
                  }
                  products(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false,
                    sortKey: "TITLE | PRICE | BEST_SELLING | CREATED | ID | MANUAL | COLLECTION_DEFAULT | RELEVANCE"
                  )
                  title
                  updatedAt
                }
                createdAt
                description(truncateAt: Int)
                descriptionHtml
                handle
                id
                images(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false,
                  sortKey: "CREATED_AT | POSITION | ID | RELEVANCE",
                  maxWidth: Int,
                  maxHeight: Int,
                  crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                  scale: Int
                ) {
                  altText
                  id
                  originalSrc
                  src
                  transformedSrc(
                    maxWidth: Int,
                    maxHeight: Int,
                    crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                    scale: Int,
                    preferredContentType: "PNG | JPG | WEBP"
                  )
                }
                onlineStoreUrl
                options(first: Int) {
                  id
                  name
                  values
                }
                priceRange {
                  maxVariantPrice {
                    amount
                    currencyCode
                  }
                  minVariantPrice {
                    amount
                    currencyCode
                  }
                }
                productType
                publishedAt
                tags
                title
                updatedAt
                variantBySelectedOptions(
                  selectedOptions: {
                    name: "String",
                    value: "String"
                  }
                ) {
                  available
                  availableForSale
                  compareAtPrice
                  id
                  image(
                    maxWidth: Int,
                    maxHeight: Int,
                    crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                    scale: Int
                  ) {
                    altText
                    id
                    originalSrc
                    src
                    transformedSrc(
                      maxWidth: Int,
                      maxHeight: Int,
                      crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                      scale: Int,
                      preferredContentType: "PNG | JPG | WEBP"
                    )
                  }
                  price
                  product
                  selectedOptions {
                    name
                    value
                  }
                  sku
                  title
                  weight
                  weightUnit
                }
                variants(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false,
                  sortKey: "TITLE | SKU | POSITION | ID | RELEVANCE"
                ) {
                  available
                  availableForSale
                  compareAtPrice
                  id
                  image(
                    maxWidth: Int,
                    maxHeight: Int,
                    crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                    scale: Int
                  ) {
                    altText
                    id
                    originalSrc
                    src
                    transformedSrc(
                      maxWidth: Int,
                      maxHeight: Int,
                      crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                      scale: Int,
                      preferredContentType: "PNG | JPG | WEBP"
                    )
                  }
                  price
                  product
                  selectedOptions {
                    name
                    value
                  }
                  sku
                  title
                  weight
                  weightUnit
                }
                vendor
              }
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # selectedOptions: List of product options applied to the variant.
    # @return [[Types::SelectedOption!]!]
    describe 'selectedOptions' do
      let!(:query) {
        %q{
          query {
            productVariant {
              selectedOptions {
                name
                value
              }
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # sku: The SKU (stock keeping unit) associated with the variant.
    # @return [Types::String]
    describe 'sku' do
      let!(:query) {
        %q{
          query {
            productVariant {
              sku
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # title: The product variant’s title.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) {
        %q{
          query {
            productVariant {
              title
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # weight: The weight of the product variant in the unit system specified with `weight_unit`.
    # @return [Types::Float]
    describe 'weight' do
      let!(:query) {
        %q{
          query {
            productVariant {
              weight
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # weightUnit: Unit of measurement for weight.
    # @return [Types::WeightUnit!]
    describe 'weightUnit' do
      let!(:query) {
        %q{
          query {
            productVariant {
              weightUnit
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
  end
end