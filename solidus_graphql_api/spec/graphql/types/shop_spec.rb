# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Shop' do
    let!(:shop) { create(:store) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # collectionByHandle: Find a collection by its handle.
    # @param handle [Types::String!]
    # @return [Types::Collection]
    describe 'collectionByHandle' do
      let!(:query) {
        %q{
          query {
            shop {
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
    # collections: List of the shop’s collections.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::CollectionSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Collection!]
    describe 'collections' do
      let!(:query) {
        %q{
          query {
            shop {
              collections(
                first: Int,
                after: "",
                last: Int,
                before: "",
                reverse: false,
                sortKey: "TITLE | UPDATED_AT | ID | RELEVANCE",
                query: ""
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
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # description: A description of the shop.
    # @return [Types::String]
    describe 'description' do
      let!(:query) {
        %q{
          query {
            shop {
              description
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
    # moneyFormat: A string representing the way currency is formatted when the currency isn’t specified.
    # @return [Types::String!]
    describe 'moneyFormat' do
      let!(:query) {
        %q{
          query {
            shop {
              moneyFormat
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
    # name: The shop’s name.
    # @return [Types::String!]
    describe 'name' do
      let!(:query) {
        %q{
          query {
            shop {
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
    # paymentSettings: Settings related to payments.
    # @return [Types::PaymentSettings!]
    describe 'paymentSettings' do
      let!(:query) {
        %q{
          query {
            shop {
              paymentSettings {
                acceptedCardBrands
                cardVaultUrl
                countryCode
                currencyCode
                solidusPaymentsAccountId
                supportedDigitalWallets
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
    # primaryDomain: The shop’s primary domain.
    # @return [Types::Domain!]
    describe 'primaryDomain' do
      let!(:query) {
        %q{
          query {
            shop {
              primaryDomain {
                host
                sslEnabled
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
    # privacyPolicy: The shop’s privacy policy.
    # @return [Types::ShopPolicy]
    describe 'privacyPolicy' do
      let!(:query) {
        %q{
          query {
            shop {
              privacyPolicy {
                body
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
    # productByHandle: Find a product by its handle.
    # @param handle [Types::String!]
    # @return [Types::Product]
    describe 'productByHandle' do
      let!(:query) {
        %q{
          query {
            shop {
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
    # productTypes: List of the shop’s product types.
    # @param first [Types::Int!]
    # @return [Types::String!]
    describe 'productTypes' do
      let!(:query) {
        %q{
          query {
            shop {
              productTypes(first: Int)
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
    # products: List of the shop’s products.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ProductSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Product!]
    describe 'products' do
      let!(:query) {
        %q{
          query {
            shop {
              products(
                first: Int,
                after: "",
                last: Int,
                before: "",
                reverse: false,
                sortKey: "TITLE | PRODUCT_TYPE | VENDOR | UPDATED_AT | CREATED_AT | BEST_SELLING | PRICE | ID | RELEVANCE",
                query: ""
              ) {
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
    # refundPolicy: The shop’s refund policy.
    # @return [Types::ShopPolicy]
    describe 'refundPolicy' do
      let!(:query) {
        %q{
          query {
            shop {
              refundPolicy {
                body
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
    # shipsToCountries: Countries that the shop ships to.
    # @return [[Types::CountryCode!]!]
    describe 'shipsToCountries' do
      let!(:query) {
        %q{
          query {
            shop {
              shipsToCountries
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
    # termsOfService: The shop’s terms of service.
    # @return [Types::ShopPolicy]
    describe 'termsOfService' do
      let!(:query) {
        %q{
          query {
            shop {
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
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
  end
end