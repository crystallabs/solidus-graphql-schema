# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Checkout' do
    let!(:checkout) { create(:checkout) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # appliedGiftCards
    # @return [[Types::AppliedGiftCard!]!]
    describe 'appliedGiftCards' do
      let!(:query) {
        %q{
          query {
            checkout {
              appliedGiftCards {
                amountUsed
                balance
                id
                lastCharacters
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
    # availableShippingRates: The available shipping rates for this Checkout. Should only be used when checkout `requiresShipping` is `true` and the shipping address is valid.
    # @return [Types::AvailableShippingRates]
    describe 'availableShippingRates' do
      let!(:query) {
        %q{
          query {
            checkout {
              availableShippingRates {
                ready
                shippingRates {
                  handle
                  price
                  title
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
    # completedAt: The date and time when the checkout was completed.
    # @return [Types::DateTime]
    describe 'completedAt' do
      let!(:query) {
        %q{
          query {
            checkout {
              completedAt
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
    # createdAt: The date and time when the checkout was created.
    # @return [Types::DateTime!]
    describe 'createdAt' do
      let!(:query) {
        %q{
          query {
            checkout {
              createdAt
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
    # currencyCode: The currency code for the Checkout.
    # @return [Types::CurrencyCode!]
    describe 'currencyCode' do
      let!(:query) {
        %q{
          query {
            checkout {
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
    # customAttributes: A list of extra information that is added to the checkout.
    # @return [[Types::Attribute!]!]
    describe 'customAttributes' do
      let!(:query) {
        %q{
          query {
            checkout {
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
    # discountApplications: Discounts that have been applied on the checkout.
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
            checkout {
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
    # email: The email attached to this checkout.
    # @return [Types::String]
    describe 'email' do
      let!(:query) {
        %q{
          query {
            checkout {
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
            checkout {
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
    # lineItems: A list of line item objects, each one containing information about an item in the checkout.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @return [Types::CheckoutLineItem!]
    describe 'lineItems' do
      let!(:query) {
        %q{
          query {
            checkout {
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
                id
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
    # note
    # @return [Types::String]
    describe 'note' do
      let!(:query) {
        %q{
          query {
            checkout {
              note
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
    # order: The resulting order from a paid checkout.
    # @return [Types::Order]
    describe 'order' do
      let!(:query) {
        %q{
          query {
            checkout {
              order {
                currencyCode
                customerLocale
                customerUrl
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
                email
                id
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
                name
                orderNumber
                phone
                processedAt
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
                statusUrl
                subtotalPrice
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
                totalPrice
                totalRefunded
                totalShippingPrice
                totalTax
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
    # orderStatusUrl: The Order Status Page for this Checkout, null when checkout is not completed.
    # @return [Types::URL]
    describe 'orderStatusUrl' do
      let!(:query) {
        %q{
          query {
            checkout {
              orderStatusUrl
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
    # paymentDue: The amount left to be paid. This is equal to the cost of the line items, taxes and shipping minus discounts and gift cards.
    # @return [Types::Money!]
    describe 'paymentDue' do
      let!(:query) {
        %q{
          query {
            checkout {
              paymentDue
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
    # ready: Whether or not the Checkout is ready and can be completed. Checkouts may have asynchronous operations that can take time to finish. If you want to complete a checkout or ensure all the fields are populated and up to date, polling is required until the value is true.
    # @return [Types::Boolean!]
    describe 'ready' do
      let!(:query) {
        %q{
          query {
            checkout {
              ready
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
    # requiresShipping: States whether or not the fulfillment requires shipping.
    # @return [Types::Boolean!]
    describe 'requiresShipping' do
      let!(:query) {
        %q{
          query {
            checkout {
              requiresShipping
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
    # shippingAddress: The shipping address to where the line items will be shipped.
    # @return [Types::MailingAddress]
    describe 'shippingAddress' do
      let!(:query) {
        %q{
          query {
            checkout {
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
            checkout {
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
    # shippingLine: Once a shipping rate is selected by the customer it is transitioned to a `shipping_line` object.
    # @return [Types::ShippingRate]
    describe 'shippingLine' do
      let!(:query) {
        %q{
          query {
            checkout {
              shippingLine {
                handle
                price
                title
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
    # subtotalPrice: Price of the checkout before shipping and taxes.
    # @return [Types::Money!]
    describe 'subtotalPrice' do
      let!(:query) {
        %q{
          query {
            checkout {
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
    # taxExempt: Specifies if the Checkout is tax exempt.
    # @return [Types::Boolean!]
    describe 'taxExempt' do
      let!(:query) {
        %q{
          query {
            checkout {
              taxExempt
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
    # taxesIncluded: Specifies if taxes are included in the line item and shipping line prices.
    # @return [Types::Boolean!]
    describe 'taxesIncluded' do
      let!(:query) {
        %q{
          query {
            checkout {
              taxesIncluded
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
    # totalPrice: The sum of all the prices of all the items in the checkout, taxes and discounts included.
    # @return [Types::Money!]
    describe 'totalPrice' do
      let!(:query) {
        %q{
          query {
            checkout {
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
    # totalTax: The sum of all the taxes applied to the line items and shipping lines in the checkout.
    # @return [Types::Money!]
    describe 'totalTax' do
      let!(:query) {
        %q{
          query {
            checkout {
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
    # updatedAt: The date and time when the checkout was last updated.
    # @return [Types::DateTime!]
    describe 'updatedAt' do
      let!(:query) {
        %q{
          query {
            checkout {
              updatedAt
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
    # webUrl: The url pointing to the checkout accessible from the web.
    # @return [Types::URL!]
    describe 'webUrl' do
      let!(:query) {
        %q{
          query {
            checkout {
              webUrl
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