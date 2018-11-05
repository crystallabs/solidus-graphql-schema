# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Fulfillment' do
    let!(:fulfillment) { create(:fulfillment) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # fulfillmentLineItems: List of the fulfillment's line items.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @return [Types::FulfillmentLineItem!]
    describe 'fulfillmentLineItems' do
      let!(:query) {
        %q{
          query {
            fulfillment {
              fulfillmentLineItems(
                first: Int,
                after: "",
                last: Int,
                before: "",
                reverse: false
              ) {
                lineItem {
                  customAttributes {
                    key
                    value
                  }
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
                  quantity
                  title
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
                quantity
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
    # trackingCompany: The name of the tracking company.
    # @return [Types::String]
    describe 'trackingCompany' do
      let!(:query) {
        %q{
          query {
            fulfillment {
              trackingCompany
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
    # trackingInfo: Tracking information associated with the fulfillment, such as the tracking number and tracking URL.
    # @param first [Types::Int]
    # @return [[Types::FulfillmentTrackingInfo!]!]
    describe 'trackingInfo' do
      let!(:query) {
        %q{
          query {
            fulfillment {
              trackingInfo(first: Int) {
                number
                url
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