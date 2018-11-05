# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Customer' do
    let!(:customer) { create(:customer) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # acceptsMarketing: Indicates whether the customer has consented to be sent marketing material via email.
    # @return [Types::Boolean!]
    describe 'acceptsMarketing' do
      let!(:query) {
        %q{
          query {
            customer {
              acceptsMarketing
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
    # addresses: A list of addresses for the customer.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @return [Types::MailingAddress!]
    describe 'addresses' do
      let!(:query) {
        %q{
          query {
            customer {
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
    # createdAt: The date and time when the customer was created.
    # @return [Types::DateTime!]
    describe 'createdAt' do
      let!(:query) {
        %q{
          query {
            customer {
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
    # defaultAddress: The customer’s default address.
    # @return [Types::MailingAddress]
    describe 'defaultAddress' do
      let!(:query) {
        %q{
          query {
            customer {
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
    # displayName: The customer’s name, email or phone number.
    # @return [Types::String!]
    describe 'displayName' do
      let!(:query) {
        %q{
          query {
            customer {
              displayName
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
    # email: The customer’s email address.
    # @return [Types::String]
    describe 'email' do
      let!(:query) {
        %q{
          query {
            customer {
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
    # firstName: The customer’s first name.
    # @return [Types::String]
    describe 'firstName' do
      let!(:query) {
        %q{
          query {
            customer {
              firstName
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
    # id: A unique identifier for the customer.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) {
        %q{
          query {
            customer {
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
    # lastIncompleteCheckout: The customer's most recently updated, incomplete checkout.
    # @return [Types::Checkout]
    describe 'lastIncompleteCheckout' do
      let!(:query) {
        %q{
          query {
            customer {
              lastIncompleteCheckout {
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
    # lastName: The customer’s last name.
    # @return [Types::String]
    describe 'lastName' do
      let!(:query) {
        %q{
          query {
            customer {
              lastName
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
    # orders: The orders associated with the customer.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::OrderSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Order!]
    describe 'orders' do
      let!(:query) {
        %q{
          query {
            customer {
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
    # phone: The customer’s phone number.
    # @return [Types::String]
    describe 'phone' do
      let!(:query) {
        %q{
          query {
            customer {
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
    # updatedAt: The date and time when the customer information was updated.
    # @return [Types::DateTime!]
    describe 'updatedAt' do
      let!(:query) {
        %q{
          query {
            customer {
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
  end
end