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
                    # ...
                  }
                  onlineStoreUrl
                  options(first: Int) {
                    # ...
                  }
                  priceRange {
                    # ...
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
                    # ...
                  }
                  variants(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false,
                    sortKey: "TITLE | SKU | POSITION | ID | RELEVANCE"
                  ) {
                    # ...
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
      let!(:result) {
        {
          data: {
            shop: {
              collectionByHandle: {
                description: 'String',
                descriptionHtml: 'HTML',
                handle: 'String',
                id: 'ID',
                image: {
                  altText: 'String',
                  id: 'ID',
                  originalSrc: 'URL',
                  src: 'URL',
                  transformedSrc: 'URL',
                },
                products: {
                  availableForSale: 'Boolean',
                  collections: 'Collection...',
                  createdAt: 'DateTime',
                  description: 'String',
                  descriptionHtml: 'HTML',
                  handle: 'String',
                  id: 'ID',
                  images: {
                    # ...
                  },
                  onlineStoreUrl: 'URL',
                  options: {
                    # ...
                  },
                  priceRange: {
                    # ...
                  },
                  productType: 'String',
                  publishedAt: 'DateTime',
                  tags: 'String',
                  title: 'String',
                  updatedAt: 'DateTime',
                  variantBySelectedOptions: {
                    # ...
                  },
                  variants: {
                    # ...
                  },
                  vendor: 'String',
                },
                title: 'String',
                updatedAt: 'DateTime',
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
                    # ...
                  }
                  onlineStoreUrl
                  options(first: Int) {
                    # ...
                  }
                  priceRange {
                    # ...
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
                    # ...
                  }
                  variants(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false,
                    sortKey: "TITLE | SKU | POSITION | ID | RELEVANCE"
                  ) {
                    # ...
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
      let!(:result) {
        {
          data: {
            shop: {
              collections: {
                description: 'String',
                descriptionHtml: 'HTML',
                handle: 'String',
                id: 'ID',
                image: {
                  altText: 'String',
                  id: 'ID',
                  originalSrc: 'URL',
                  src: 'URL',
                  transformedSrc: 'URL',
                },
                products: {
                  availableForSale: 'Boolean',
                  collections: 'Collection...',
                  createdAt: 'DateTime',
                  description: 'String',
                  descriptionHtml: 'HTML',
                  handle: 'String',
                  id: 'ID',
                  images: {
                    # ...
                  },
                  onlineStoreUrl: 'URL',
                  options: {
                    # ...
                  },
                  priceRange: {
                    # ...
                  },
                  productType: 'String',
                  publishedAt: 'DateTime',
                  tags: 'String',
                  title: 'String',
                  updatedAt: 'DateTime',
                  variantBySelectedOptions: {
                    # ...
                  },
                  variants: {
                    # ...
                  },
                  vendor: 'String',
                },
                title: 'String',
                updatedAt: 'DateTime',
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
      let!(:result) {
        {
          data: {
            shop: {
              description: 'String',
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
      let!(:result) {
        {
          data: {
            shop: {
              moneyFormat: 'String',
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
      let!(:result) {
        {
          data: {
            shop: {
              name: 'String',
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
      let!(:result) {
        {
          data: {
            shop: {
              paymentSettings: {
                acceptedCardBrands: 'VISA | MASTERCARD | DISCOVER | AMERICAN_EXPRESS | DINERS_CLUB | JCB',
                cardVaultUrl: 'URL',
                countryCode: 'AF | AX | AL | DZ | AD | AO | AI | AG | AR | AM | AW | AU | AT | AZ | BS | BH | BD | BB | BY | BE | BZ | BJ | BM | BT | BO | BQ | BA | BW | BV | BR | IO | BN | BG | BF | BI | KH | CA | CV | KY | CF | TD | CL | CN | CX | CC | CO | KM | CG | CD | CK | CR | HR | CU | CW | CY | CZ | CI | DK | DJ | DM | DO | EC | EG | SV | GQ | ER | EE | ET | FK | FO | FJ | FI | FR | GF | PF | TF | GA | GM | GE | DE | GH | GI | GR | GL | GD | GP | GT | GG | GN | GW | GY | HT | HM | VA | HN | HK | HU | IS | IN | ID | IR | IQ | IE | IM | IL | IT | JM | JP | JE | JO | KZ | KE | KI | KP | XK | KW | KG | LA | LV | LB | LS | LR | LY | LI | LT | LU | MO | MK | MG | MW | MY | MV | ML | MT | MQ | MR | MU | YT | MX | MD | MC | MN | ME | MS | MA | MZ | MM | NA | NR | NP | NL | AN | NC | NZ | NI | NE | NG | NU | NF | NO | OM | PK | PS | PA | PG | PY | PE | PH | PN | PL | PT | QA | CM | RE | RO | RU | RW | BL | SH | KN | LC | MF | PM | WS | SM | ST | SA | SN | RS | SC | SL | SG | SX | SK | SI | SB | SO | ZA | GS | KR | SS | ES | LK | VC | SD | SR | SJ | SZ | SE | CH | SY | TW | TJ | TZ | TH | TL | TG | TK | TO | TT | TN | TR | TM | TC | TV | UG | UA | AE | GB | US | UM | UY | UZ | VU | VE | VN | VG | WF | EH | YE | ZM | ZW',
                currencyCode: 'USD | EUR | GBP | CAD | AFN | ALL | DZD | AOA | ARS | AMD | AWG | AUD | BBD | AZN | BDT | BSD | BHD | BIF | BYR | BZD | BTN | BAM | BRL | BOB | BWP | BND | BGN | MMK | KHR | CVE | KYD | XAF | CLP | CNY | COP | KMF | CDF | CRC | HRK | CZK | DKK | DOP | XCD | EGP | ETB | XPF | FJD | GMD | GHS | GTQ | GYD | GEL | HTG | HNL | HKD | HUF | ISK | INR | IDR | ILS | IQD | JMD | JPY | JEP | JOD | KZT | KES | KWD | KGS | LAK | LVL | LBP | LSL | LRD | LTL | MGA | MKD | MOP | MWK | MVR | MXN | MYR | MUR | MDL | MAD | MNT | MZN | NAD | NPR | ANG | NZD | NIO | NGN | NOK | OMR | PKR | PGK | PYG | PEN | PHP | PLN | QAR | RON | RUB | RWF | WST | SAR | STD | RSD | SCR | SGD | SDG | SYP | ZAR | KRW | SSP | SBD | LKR | SRD | SZL | SEK | CHF | TWD | THB | TZS | TTD | TND | TRY | TMT | UGX | UAH | AED | UYU | UZS | VUV | VEF | VND | XOF | YER | ZMW',
                solidusPaymentsAccountId: 'String',
                supportedDigitalWallets: 'APPLE_PAY | ANDROID_PAY | GOOGLE_PAY | SOLIDUS_PAY',
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
      let!(:result) {
        {
          data: {
            shop: {
              primaryDomain: {
                host: 'String',
                sslEnabled: 'Boolean',
                url: 'URL',
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
      let!(:result) {
        {
          data: {
            shop: {
              privacyPolicy: {
                body: 'String',
                id: 'ID',
                title: 'String',
                url: 'URL',
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
            shop: {
              productByHandle: {
                availableForSale: 'Boolean',
                collections: {
                  description: 'String',
                  descriptionHtml: 'HTML',
                  handle: 'String',
                  id: 'ID',
                  image: {
                    # ...
                  },
                  products: 'Product...',
                  title: 'String',
                  updatedAt: 'DateTime',
                },
                createdAt: 'DateTime',
                description: 'String',
                descriptionHtml: 'HTML',
                handle: 'String',
                id: 'ID',
                images: {
                  altText: 'String',
                  id: 'ID',
                  originalSrc: 'URL',
                  src: 'URL',
                  transformedSrc: 'URL',
                },
                onlineStoreUrl: 'URL',
                options: {
                  id: 'ID',
                  name: 'String',
                  values: 'String',
                },
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
                variantBySelectedOptions: {
                  available: 'Boolean',
                  availableForSale: 'Boolean',
                  compareAtPrice: 'Money',
                  id: 'ID',
                  image: {
                    # ...
                  },
                  price: 'Money',
                  product: 'Product...',
                  selectedOptions: {
                    # ...
                  },
                  sku: 'String',
                  title: 'String',
                  weight: 'Float',
                  weightUnit: 'KILOGRAMS | GRAMS | POUNDS | OUNCES',
                },
                variants: {
                  available: 'Boolean',
                  availableForSale: 'Boolean',
                  compareAtPrice: 'Money',
                  id: 'ID',
                  image: {
                    # ...
                  },
                  price: 'Money',
                  product: 'Product...',
                  selectedOptions: {
                    # ...
                  },
                  sku: 'String',
                  title: 'String',
                  weight: 'Float',
                  weightUnit: 'KILOGRAMS | GRAMS | POUNDS | OUNCES',
                },
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
      let!(:result) {
        {
          data: {
            shop: {
              productTypes: 'String',
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
            shop: {
              products: {
                availableForSale: 'Boolean',
                collections: {
                  description: 'String',
                  descriptionHtml: 'HTML',
                  handle: 'String',
                  id: 'ID',
                  image: {
                    # ...
                  },
                  products: 'Product...',
                  title: 'String',
                  updatedAt: 'DateTime',
                },
                createdAt: 'DateTime',
                description: 'String',
                descriptionHtml: 'HTML',
                handle: 'String',
                id: 'ID',
                images: {
                  altText: 'String',
                  id: 'ID',
                  originalSrc: 'URL',
                  src: 'URL',
                  transformedSrc: 'URL',
                },
                onlineStoreUrl: 'URL',
                options: {
                  id: 'ID',
                  name: 'String',
                  values: 'String',
                },
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
                variantBySelectedOptions: {
                  available: 'Boolean',
                  availableForSale: 'Boolean',
                  compareAtPrice: 'Money',
                  id: 'ID',
                  image: {
                    # ...
                  },
                  price: 'Money',
                  product: 'Product...',
                  selectedOptions: {
                    # ...
                  },
                  sku: 'String',
                  title: 'String',
                  weight: 'Float',
                  weightUnit: 'KILOGRAMS | GRAMS | POUNDS | OUNCES',
                },
                variants: {
                  available: 'Boolean',
                  availableForSale: 'Boolean',
                  compareAtPrice: 'Money',
                  id: 'ID',
                  image: {
                    # ...
                  },
                  price: 'Money',
                  product: 'Product...',
                  selectedOptions: {
                    # ...
                  },
                  sku: 'String',
                  title: 'String',
                  weight: 'Float',
                  weightUnit: 'KILOGRAMS | GRAMS | POUNDS | OUNCES',
                },
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
      let!(:result) {
        {
          data: {
            shop: {
              refundPolicy: {
                body: 'String',
                id: 'ID',
                title: 'String',
                url: 'URL',
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
      let!(:result) {
        {
          data: {
            shop: {
              shipsToCountries: 'AF | AX | AL | DZ | AD | AO | AI | AG | AR | AM | AW | AU | AT | AZ | BS | BH | BD | BB | BY | BE | BZ | BJ | BM | BT | BO | BQ | BA | BW | BV | BR | IO | BN | BG | BF | BI | KH | CA | CV | KY | CF | TD | CL | CN | CX | CC | CO | KM | CG | CD | CK | CR | HR | CU | CW | CY | CZ | CI | DK | DJ | DM | DO | EC | EG | SV | GQ | ER | EE | ET | FK | FO | FJ | FI | FR | GF | PF | TF | GA | GM | GE | DE | GH | GI | GR | GL | GD | GP | GT | GG | GN | GW | GY | HT | HM | VA | HN | HK | HU | IS | IN | ID | IR | IQ | IE | IM | IL | IT | JM | JP | JE | JO | KZ | KE | KI | KP | XK | KW | KG | LA | LV | LB | LS | LR | LY | LI | LT | LU | MO | MK | MG | MW | MY | MV | ML | MT | MQ | MR | MU | YT | MX | MD | MC | MN | ME | MS | MA | MZ | MM | NA | NR | NP | NL | AN | NC | NZ | NI | NE | NG | NU | NF | NO | OM | PK | PS | PA | PG | PY | PE | PH | PN | PL | PT | QA | CM | RE | RO | RU | RW | BL | SH | KN | LC | MF | PM | WS | SM | ST | SA | SN | RS | SC | SL | SG | SX | SK | SI | SB | SO | ZA | GS | KR | SS | ES | LK | VC | SD | SR | SJ | SZ | SE | CH | SY | TW | TJ | TZ | TH | TL | TG | TK | TO | TT | TN | TR | TM | TC | TV | UG | UA | AE | GB | US | UM | UY | UZ | VU | VE | VN | VG | WF | EH | YE | ZM | ZW',
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
      let!(:result) {
        {
          data: {
            shop: {
              termsOfService: {
                body: 'String',
                id: 'ID',
                title: 'String',
                url: 'URL',
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
  end
end