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
      let!(:result) {
        {
          data: {
            productVariant: {
              availableForSale: 'Boolean',
            }
          },
          #errors: {},
        }
      }
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
      let!(:result) {
        {
          data: {
            productVariant: {
              compareAtPrice: 'Money',
            }
          },
          #errors: {},
        }
      }
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
      let!(:result) {
        {
          data: {
            productVariant: {
              id: 'ID',
            }
          },
          #errors: {},
        }
      }
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
      let!(:result) {
        {
          data: {
            productVariant: {
              image: {
                altText: 'String',
                id: 'ID',
                originalSrc: 'URL',
                src: 'URL',
                transformedSrc: ['URL'],
              },
            }
          },
          #errors: {},
        }
      }
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
      let!(:result) {
        {
          data: {
            productVariant: {
              price: 'Money',
            }
          },
          #errors: {},
        }
      }
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
                    # ...
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
                    # ...
                  }
                  minVariantPrice {
                    # ...
                  }
                }
                productType
                publishedAt
                tags
                title
                updatedAt
                variantBySelectedOptions(
                  selectedOptions: [
                    {
                      name: "String",
                      value: "String"
                    }
                  ]
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
                    # ...
                  }
                  price
                  product
                  selectedOptions {
                    # ...
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
                    # ...
                  }
                  price
                  product
                  selectedOptions {
                    # ...
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
      let!(:result) {
        {
          data: {
            productVariant: {
              product: {
                availableForSale: 'Boolean',
                collections: [
                  description: ['String'],
                  descriptionHtml: 'HTML',
                  handle: 'String',
                  id: 'ID',
                  image: [
                    # ...
                  ],
                  products: ['Product...'],
                  title: 'String',
                  updatedAt: 'DateTime',
                ],
                createdAt: 'DateTime',
                description: ['String'],
                descriptionHtml: 'HTML',
                handle: 'String',
                id: 'ID',
                images: [
                  altText: 'String',
                  id: 'ID',
                  originalSrc: 'URL',
                  src: 'URL',
                  transformedSrc: ['URL'],
                ],
                onlineStoreUrl: 'URL',
                options: [
                  id: 'ID',
                  name: 'String',
                  values: 'String',
                ],
                priceRange: {
                  maxVariantPrice: {
                    # ...
                  },
                  minVariantPrice: {
                    # ...
                  },
                },
                productType: 'String',
                publishedAt: 'DateTime',
                tags: 'String',
                title: 'String',
                updatedAt: 'DateTime',
                variantBySelectedOptions: [
                  available: 'Boolean',
                  availableForSale: 'Boolean',
                  compareAtPrice: 'Money',
                  id: 'ID',
                  image: [
                    # ...
                  ],
                  price: 'Money',
                  product: 'Product...',
                  selectedOptions: {
                    # ...
                  },
                  sku: 'String',
                  title: 'String',
                  weight: 'Float',
                  weightUnit: 'KILOGRAMS | GRAMS | POUNDS | OUNCES',
                ],
                variants: [
                  available: 'Boolean',
                  availableForSale: 'Boolean',
                  compareAtPrice: 'Money',
                  id: 'ID',
                  image: [
                    # ...
                  ],
                  price: 'Money',
                  product: 'Product...',
                  selectedOptions: {
                    # ...
                  },
                  sku: 'String',
                  title: 'String',
                  weight: 'Float',
                  weightUnit: 'KILOGRAMS | GRAMS | POUNDS | OUNCES',
                ],
                vendor: 'String',
              },
            }
          },
          #errors: {},
        }
      }
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
      let!(:result) {
        {
          data: {
            productVariant: {
              selectedOptions: {
                name: 'String',
                value: 'String',
              },
            }
          },
          #errors: {},
        }
      }
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
      let!(:result) {
        {
          data: {
            productVariant: {
              sku: 'String',
            }
          },
          #errors: {},
        }
      }
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
      let!(:result) {
        {
          data: {
            productVariant: {
              title: 'String',
            }
          },
          #errors: {},
        }
      }
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
      let!(:result) {
        {
          data: {
            productVariant: {
              weight: 'Float',
            }
          },
          #errors: {},
        }
      }
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
      let!(:result) {
        {
          data: {
            productVariant: {
              weightUnit: 'KILOGRAMS | GRAMS | POUNDS | OUNCES',
            }
          },
          #errors: {},
        }
      }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
  end
end