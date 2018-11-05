# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Payment' do
    let!(:payment) { create(:payment) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # amount: The amount of the payment.
    # @return [Types::Money!]
    describe 'amount' do
      let!(:query) {
        %q{
          query {
            payment {
              amount
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
    # billingAddress: The billing address for the payment.
    # @return [Types::MailingAddress]
    describe 'billingAddress' do
      let!(:query) {
        %q{
          query {
            payment {
              billingAddress {
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
    # checkout: The checkout to which the payment belongs.
    # @return [Types::Checkout!]
    describe 'checkout' do
      let!(:query) {
        %q{
          query {
            payment {
              checkout {
                appliedGiftCards {
                  amountUsed
                  balance
                  id
                  lastCharacters
                }
                availableShippingRates {
                  ready
                  shippingRates {
                    handle
                    price
                    title
                  }
                }
                completedAt
                createdAt
                currencyCode
                customAttributes {
                  key
                  value
                }
                customer {
                  acceptsMarketing
                  addresses(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false
                  ) {
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
                  createdAt
                  defaultAddress {
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
                  displayName
                  email
                  firstName
                  id
                  lastIncompleteCheckout
                  lastName
                  orders(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false,
                    sortKey: "PROCESSED_AT | TOTAL_PRICE | ID | RELEVANCE",
                    query: ""
                  ) {
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
                  phone
                  updatedAt
                }
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
                note
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
                orderStatusUrl
                paymentDue
                ready
                requiresShipping
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
                shippingLine {
                  handle
                  price
                  title
                }
                subtotalPrice
                taxExempt
                taxesIncluded
                totalPrice
                totalTax
                updatedAt
                webUrl
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
    # creditCard: The credit card used for the payment in the case of direct payments.
    # @return [Types::CreditCard]
    describe 'creditCard' do
      let!(:query) {
        %q{
          query {
            payment {
              creditCard {
                brand
                expiryMonth
                expiryYear
                firstDigits
                firstName
                lastDigits
                lastName
                maskedNumber
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
    # errorMessage: An message describing a processing error during asynchronous processing.
    # @return [Types::String]
    describe 'errorMessage' do
      let!(:query) {
        %q{
          query {
            payment {
              errorMessage
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
            payment {
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
    # idempotencyKey: A client-side generated token to identify a payment and perform idempotent operations.
    # @return [Types::String]
    describe 'idempotencyKey' do
      let!(:query) {
        %q{
          query {
            payment {
              idempotencyKey
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
    # ready: Whether or not the payment is still processing asynchronously.
    # @return [Types::Boolean!]
    describe 'ready' do
      let!(:query) {
        %q{
          query {
            payment {
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
    # test: A flag to indicate if the payment is to be done in test mode for gateways that support it.
    # @return [Types::Boolean!]
    describe 'test' do
      let!(:query) {
        %q{
          query {
            payment {
              test
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
    # transaction: The actual transaction recorded by Solidus after having processed the payment with the gateway.
    # @return [Types::Transaction]
    describe 'transaction' do
      let!(:query) {
        %q{
          query {
            payment {
              transaction {
                amount
                kind
                status
                test
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