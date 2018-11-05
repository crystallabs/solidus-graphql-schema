# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::OrderLineItem' do
    let!(:order_line_item) { create(:order_line_item) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # customAttributes: List of custom attributes associated to the line item.
    # @return [[Types::Attribute!]!]
    describe 'customAttributes' do
      let!(:query) {
        %q{
          query {
            orderLineItem {
              customAttributes {
                key
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
    # discountAllocations: The discounts that have been allocated onto the order line item by discount applications.
    # @return [[Types::DiscountAllocation!]!]
    describe 'discountAllocations' do
      let!(:query) {
        %q{
          query {
            orderLineItem {
              discountAllocations {
                allocatedAmount {
                  amount
                  currencyCode
                }
                discountApplication {
                  allocationMethod
                  targetSelection
                  targetType
                  value
                }
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
    # quantity: The number of products variants associated to the line item.
    # @return [Types::Int!]
    describe 'quantity' do
      let!(:query) {
        %q{
          query {
            orderLineItem {
              quantity
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
    # title: The title of the product combined with title of the variant.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) {
        %q{
          query {
            orderLineItem {
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
    # variant: The product variant object associated to the line item.
    # @return [Types::ProductVariant]
    describe 'variant' do
      let!(:query) {
        %q{
          query {
            orderLineItem {
              variant {
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
                  )
                  variants(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false,
                    sortKey: "TITLE | SKU | POSITION | ID | RELEVANCE"
                  )
                  vendor
                }
                selectedOptions {
                  name
                  value
                }
                sku
                title
                weight
                weightUnit
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
  end
end