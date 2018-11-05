# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Order' do
    let!(:order) { create(:order) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # currencyCode: The code of the currency used for the payment.
    # @return [Types::CurrencyCode!]
    describe 'currencyCode' do
      let!(:query) {
        %q{
          query {
            order {
              currencyCode
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
    # customerLocale: The locale code in which this specific order happened.
    # @return [Types::String]
    describe 'customerLocale' do
      let!(:query) {
        %q{
          query {
            order {
              customerLocale
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
    # customerUrl: The unique URL that the customer can use to access the order.
    # @return [Types::URL]
    describe 'customerUrl' do
      let!(:query) {
        %q{
          query {
            order {
              customerUrl
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
    # discountApplications: Discounts that have been applied on the order.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @return [Interfaces::DiscountApplication!]
    describe 'discountApplications' do
      let!(:query) {
        %q{
          query {
            order {
              discountApplications(
                first: Int,
                after: "",
                last: Int,
                before: "",
                reverse: false
              ) {
                allocationMethod
                targetSelection
                targetType
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
    # email: The customer's email address.
    # @return [Types::String]
    describe 'email' do
      let!(:query) {
        %q{
          query {
            order {
              email
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
            order {
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
    # lineItems: List of the order’s line items.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @return [Types::OrderLineItem!]
    describe 'lineItems' do
      let!(:query) {
        %q{
          query {
            order {
              lineItems(
                first: Int,
                after: "",
                last: Int,
                before: "",
                reverse: false
              ) {
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
    # name: Unique identifier for the order that appears on the order. For example, _#1000_ or _Store1001.
    # @return [Types::String!]
    describe 'name' do
      let!(:query) {
        %q{
          query {
            order {
              name
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
    # orderNumber: A unique numeric identifier for the order for use by shop owner and customer.
    # @return [Types::Int!]
    describe 'orderNumber' do
      let!(:query) {
        %q{
          query {
            order {
              orderNumber
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
    # phone: The customer's phone number.
    # @return [Types::String]
    describe 'phone' do
      let!(:query) {
        %q{
          query {
            order {
              phone
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
    # processedAt: The date and time when the order was imported. This value can be set to dates in the past when importing from other systems. If no value is provided, it will be auto-generated based on current date and time.
    # @return [Types::DateTime!]
    describe 'processedAt' do
      let!(:query) {
        %q{
          query {
            order {
              processedAt
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
    # shippingAddress: The address to where the order will be shipped.
    # @return [Types::MailingAddress]
    describe 'shippingAddress' do
      let!(:query) {
        %q{
          query {
            order {
              shippingAddress {
                address1
                address2
                city
                company
                country
                countryCode
                countryCodeV2
                firstName
                formatted(
                  withName: false,
                  withCompany: true
                )
                formattedArea
                id
                lastName
                latitude
                longitude
                name
                phone
                province
                provinceCode
                zip
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
    # shippingDiscountAllocations: The discounts that have been allocated onto the shipping line by discount applications.
    # @return [[Types::DiscountAllocation!]!]
    describe 'shippingDiscountAllocations' do
      let!(:query) {
        %q{
          query {
            order {
              shippingDiscountAllocations {
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
    # statusUrl: The unique URL for the order's status page.
    # @return [Types::URL!]
    describe 'statusUrl' do
      let!(:query) {
        %q{
          query {
            order {
              statusUrl
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
    # subtotalPrice: Price of the order before shipping and taxes.
    # @return [Types::Money]
    describe 'subtotalPrice' do
      let!(:query) {
        %q{
          query {
            order {
              subtotalPrice
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
    # successfulFulfillments: List of the order’s successful fulfillments.
    # @param first [Types::Int]
    # @return [[Types::Fulfillment!]]
    describe 'successfulFulfillments' do
      let!(:query) {
        %q{
          query {
            order {
              successfulFulfillments(first: Int) {
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
                trackingCompany
                trackingInfo(first: Int) {
                  number
                  url
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
    # totalPrice: The sum of all the prices of all the items in the order, taxes and discounts included (must be positive).
    # @return [Types::Money!]
    describe 'totalPrice' do
      let!(:query) {
        %q{
          query {
            order {
              totalPrice
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
    # totalRefunded: The total amount that has been refunded.
    # @return [Types::Money!]
    describe 'totalRefunded' do
      let!(:query) {
        %q{
          query {
            order {
              totalRefunded
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
    # totalShippingPrice: The total cost of shipping.
    # @return [Types::Money!]
    describe 'totalShippingPrice' do
      let!(:query) {
        %q{
          query {
            order {
              totalShippingPrice
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
    # totalTax: The total cost of taxes.
    # @return [Types::Money]
    describe 'totalTax' do
      let!(:query) {
        %q{
          query {
            order {
              totalTax
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