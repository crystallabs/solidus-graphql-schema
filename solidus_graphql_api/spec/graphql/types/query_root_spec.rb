# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::QueryRoot' do
    let!(:query_root) { create(:query_root) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # articles: List of the shop's articles.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ArticleSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Article.connection_type!]
    describe 'articles' do
      let!(:query) {
        %q{
          query {
            queryRoot {
              articles(
                first: Int,
                after: "",
                last: Int,
                before: "",
                reverse: false,
                sortKey: "TITLE | BLOG_TITLE | AUTHOR | UPDATED_AT | PUBLISHED_AT | ID | RELEVANCE",
                query: ""
              ) {
                edges {
                  node {
                    author {
                      bio
                      email
                      firstName
                      lastName
                      name
                    }
                    authorV2 {
                      bio
                      email
                      firstName
                      lastName
                      name
                    }
                    blog {
                      articleByHandle(handle: "")
                      articles(
                        first: Int,
                        after: "",
                        last: Int,
                        before: "",
                        reverse: false
                      ) {
                        edges {
                          node
                        }
                        pageInfo {
                          hasNextPage
                          hasPreviousPage
                        }
                      }
                      authors {
                        bio
                        email
                        firstName
                        lastName
                        name
                      }
                      handle
                      id
                      title
                      url
                    }
                    comments(
                      first: Int,
                      after: "",
                      last: Int,
                      before: "",
                      reverse: false
                    ) {
                      edges {
                        node {
                          author {
                            email
                            name
                          }
                          content(truncateAt: Int)
                          contentHtml
                          id
                        }
                      }
                      pageInfo {
                        hasNextPage
                        hasPreviousPage
                      }
                    }
                    content(truncateAt: Int)
                    contentHtml
                    excerpt(truncateAt: Int)
                    excerptHtml
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
                    publishedAt
                    tags
                    title
                    url
                  }
                }
                pageInfo {
                  hasNextPage
                  hasPreviousPage
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
    # blogByHandle: Find a blog by its handle.
    # @param handle [Types::String!]
    # @return [Types::Blog]
    describe 'blogByHandle' do
      let!(:query) {
        %q{
          query {
            queryRoot {
              blogByHandle(handle: "") {
                articleByHandle(handle: "") {
                  author {
                    bio
                    email
                    firstName
                    lastName
                    name
                  }
                  authorV2 {
                    bio
                    email
                    firstName
                    lastName
                    name
                  }
                  blog
                  comments(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false
                  ) {
                    author {
                      email
                      name
                    }
                    content(truncateAt: Int)
                    contentHtml
                    id
                  }
                  content(truncateAt: Int)
                  contentHtml
                  excerpt(truncateAt: Int)
                  excerptHtml
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
                  publishedAt
                  tags
                  title
                  url
                }
                articles(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false
                ) {
                  author {
                    bio
                    email
                    firstName
                    lastName
                    name
                  }
                  authorV2 {
                    bio
                    email
                    firstName
                    lastName
                    name
                  }
                  blog
                  comments(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false
                  ) {
                    author {
                      email
                      name
                    }
                    content(truncateAt: Int)
                    contentHtml
                    id
                  }
                  content(truncateAt: Int)
                  contentHtml
                  excerpt(truncateAt: Int)
                  excerptHtml
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
                  publishedAt
                  tags
                  title
                  url
                }
                authors {
                  bio
                  email
                  firstName
                  lastName
                  name
                }
                handle
                id
                title
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
    # blogs: List of the shop's blogs.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::BlogSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Blog.connection_type!]
    describe 'blogs' do
      let!(:query) {
        %q{
          query {
            queryRoot {
              blogs(
                first: Int,
                after: "",
                last: Int,
                before: "",
                reverse: false,
                sortKey: "HANDLE | TITLE | ID | RELEVANCE",
                query: ""
              ) {
                edges {
                  node {
                    articleByHandle(handle: "") {
                      author {
                        bio
                        email
                        firstName
                        lastName
                        name
                      }
                      authorV2 {
                        bio
                        email
                        firstName
                        lastName
                        name
                      }
                      blog
                      comments(
                        first: Int,
                        after: "",
                        last: Int,
                        before: "",
                        reverse: false
                      ) {
                        author {
                          email
                          name
                        }
                        content(truncateAt: Int)
                        contentHtml
                        id
                      }
                      content(truncateAt: Int)
                      contentHtml
                      excerpt(truncateAt: Int)
                      excerptHtml
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
                      publishedAt
                      tags
                      title
                      url
                    }
                    articles(
                      first: Int,
                      after: "",
                      last: Int,
                      before: "",
                      reverse: false
                    ) {
                      author {
                        bio
                        email
                        firstName
                        lastName
                        name
                      }
                      authorV2 {
                        bio
                        email
                        firstName
                        lastName
                        name
                      }
                      blog
                      comments(
                        first: Int,
                        after: "",
                        last: Int,
                        before: "",
                        reverse: false
                      ) {
                        author {
                          email
                          name
                        }
                        content(truncateAt: Int)
                        contentHtml
                        id
                      }
                      content(truncateAt: Int)
                      contentHtml
                      excerpt(truncateAt: Int)
                      excerptHtml
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
                      publishedAt
                      tags
                      title
                      url
                    }
                    authors {
                      bio
                      email
                      firstName
                      lastName
                      name
                    }
                    handle
                    id
                    title
                    url
                  }
                }
                pageInfo {
                  hasNextPage
                  hasPreviousPage
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
    # customer
    # @param customer_access_token [Types::String!]
    # @return [Types::Customer]
    describe 'customer' do
      let!(:query) {
        %q{
          query {
            queryRoot {
              customer(customerAccessToken: "") {
                acceptsMarketing
                addresses(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false
                ) {
                  edges {
                    node {
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
                  pageInfo {
                    hasNextPage
                    hasPreviousPage
                  }
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
                  customer
                  discountApplications(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false
                  ) {
                    edges {
                      node {
                        allocationMethod
                        targetSelection
                        targetType
                        value
                      }
                    }
                    pageInfo {
                      hasNextPage
                      hasPreviousPage
                    }
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
                    edges {
                      node {
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
                              edges {
                                node {
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
                                  ) {
                                    edges {
                                      node
                                    }
                                    pageInfo {
                                      hasNextPage
                                      hasPreviousPage
                                    }
                                  }
                                  title
                                  updatedAt
                                }
                              }
                              pageInfo {
                                hasNextPage
                                hasPreviousPage
                              }
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
                              edges {
                                node {
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
                              pageInfo {
                                hasNextPage
                                hasPreviousPage
                              }
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
                            ) {
                              edges {
                                node
                              }
                              pageInfo {
                                hasNextPage
                                hasPreviousPage
                              }
                            }
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
                    pageInfo {
                      hasNextPage
                      hasPreviousPage
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
                      edges {
                        node {
                          allocationMethod
                          targetSelection
                          targetType
                          value
                        }
                      }
                      pageInfo {
                        hasNextPage
                        hasPreviousPage
                      }
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
                      edges {
                        node {
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
                      pageInfo {
                        hasNextPage
                        hasPreviousPage
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
                        edges {
                          node {
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
                        pageInfo {
                          hasNextPage
                          hasPreviousPage
                        }
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
                  edges {
                    node {
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
                  pageInfo {
                    hasNextPage
                    hasPreviousPage
                  }
                }
                phone
                updatedAt
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
    # node
    # @param id [Types::ID!]
    # @return [Interfaces::Node]
    describe 'node' do
      let!(:query) {
        %q{
          query {
            queryRoot {
              node(id: "ID") {
                id
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
    # nodes
    # @param ids [[Types::ID!]!]
    # @return [[Interfaces::Node]!]
    describe 'nodes' do
      let!(:query) {
        %q{
          query {
            queryRoot {
              nodes(ids: "ID") {
                id
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
    # shop
    # @return [Types::Shop!]
    describe 'shop' do
      let!(:query) {
        %q{
          query {
            queryRoot {
              shop {
                articles(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false,
                  sortKey: "TITLE | BLOG_TITLE | AUTHOR | UPDATED_AT | PUBLISHED_AT | ID | RELEVANCE",
                  query: ""
                ) {
                  edges {
                    node {
                      author {
                        bio
                        email
                        firstName
                        lastName
                        name
                      }
                      authorV2 {
                        bio
                        email
                        firstName
                        lastName
                        name
                      }
                      blog {
                        articleByHandle(handle: "")
                        articles(
                          first: Int,
                          after: "",
                          last: Int,
                          before: "",
                          reverse: false
                        )
                        authors {
                          bio
                          email
                          firstName
                          lastName
                          name
                        }
                        handle
                        id
                        title
                        url
                      }
                      comments(
                        first: Int,
                        after: "",
                        last: Int,
                        before: "",
                        reverse: false
                      ) {
                        author {
                          email
                          name
                        }
                        content(truncateAt: Int)
                        contentHtml
                        id
                      }
                      content(truncateAt: Int)
                      contentHtml
                      excerpt(truncateAt: Int)
                      excerptHtml
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
                      publishedAt
                      tags
                      title
                      url
                    }
                  }
                  pageInfo {
                    hasNextPage
                    hasPreviousPage
                  }
                }
                blogs(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false,
                  sortKey: "HANDLE | TITLE | ID | RELEVANCE",
                  query: ""
                ) {
                  edges {
                    node {
                      articleByHandle(handle: "") {
                        author {
                          bio
                          email
                          firstName
                          lastName
                          name
                        }
                        authorV2 {
                          bio
                          email
                          firstName
                          lastName
                          name
                        }
                        blog
                        comments(
                          first: Int,
                          after: "",
                          last: Int,
                          before: "",
                          reverse: false
                        ) {
                          author {
                            email
                            name
                          }
                          content(truncateAt: Int)
                          contentHtml
                          id
                        }
                        content(truncateAt: Int)
                        contentHtml
                        excerpt(truncateAt: Int)
                        excerptHtml
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
                        publishedAt
                        tags
                        title
                        url
                      }
                      articles(
                        first: Int,
                        after: "",
                        last: Int,
                        before: "",
                        reverse: false
                      ) {
                        author {
                          bio
                          email
                          firstName
                          lastName
                          name
                        }
                        authorV2 {
                          bio
                          email
                          firstName
                          lastName
                          name
                        }
                        blog
                        comments(
                          first: Int,
                          after: "",
                          last: Int,
                          before: "",
                          reverse: false
                        ) {
                          author {
                            email
                            name
                          }
                          content(truncateAt: Int)
                          contentHtml
                          id
                        }
                        content(truncateAt: Int)
                        contentHtml
                        excerpt(truncateAt: Int)
                        excerptHtml
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
                        publishedAt
                        tags
                        title
                        url
                      }
                      authors {
                        bio
                        email
                        firstName
                        lastName
                        name
                      }
                      handle
                      id
                      title
                      url
                    }
                  }
                  pageInfo {
                    hasNextPage
                    hasPreviousPage
                  }
                }
                cardVaultUrl
                collectionByHandle(handle: "") {
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
                  ) {
                    availableForSale
                    collections(
                      first: Int,
                      after: "",
                      last: Int,
                      before: "",
                      reverse: false
                    )
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
                  title
                  updatedAt
                }
                collections(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false,
                  sortKey: "TITLE | UPDATED_AT | ID | RELEVANCE",
                  query: ""
                ) {
                  edges {
                    node {
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
                      ) {
                        availableForSale
                        collections(
                          first: Int,
                          after: "",
                          last: Int,
                          before: "",
                          reverse: false
                        )
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
                      title
                      updatedAt
                    }
                  }
                  pageInfo {
                    hasNextPage
                    hasPreviousPage
                  }
                }
                currencyCode
                description
                moneyFormat
                name
                paymentSettings {
                  acceptedCardBrands
                  cardVaultUrl
                  countryCode
                  currencyCode
                  solidusPaymentsAccountId
                  supportedDigitalWallets
                }
                primaryDomain {
                  host
                  sslEnabled
                  url
                }
                privacyPolicy {
                  body
                  id
                  title
                  url
                }
                productByHandle(handle: "") {
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
                productTypes(first: Int) {
                  edges {
                    node
                  }
                  pageInfo {
                    hasNextPage
                    hasPreviousPage
                  }
                }
                products(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false,
                  sortKey: "TITLE | PRODUCT_TYPE | VENDOR | UPDATED_AT | CREATED_AT | BEST_SELLING | PRICE | ID | RELEVANCE",
                  query: ""
                ) {
                  edges {
                    node {
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
                  pageInfo {
                    hasNextPage
                    hasPreviousPage
                  }
                }
                refundPolicy {
                  body
                  id
                  title
                  url
                }
                shipsToCountries
                solidusPaymentsAccountId
                termsOfService {
                  body
                  id
                  title
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
  end
end