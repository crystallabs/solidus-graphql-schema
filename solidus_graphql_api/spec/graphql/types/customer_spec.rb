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
      let!(:result) {
        {
          data: {
            customer: {
              acceptsMarketing: 'Boolean',
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
      let!(:result) {
        {
          data: {
            customer: {
              addresses: {
                address1: 'String',
                address2: 'String',
                city: 'String',
                company: 'String',
                country: 'String',
                countryCode: 'String',
                countryCodeV2: 'AF | AX | AL | DZ | AD | AO | AI | AG | AR | AM | AW | AU | AT | AZ | BS | BH | BD | BB | BY | BE | BZ | BJ | BM | BT | BO | BQ | BA | BW | BV | BR | IO | BN | BG | BF | BI | KH | CA | CV | KY | CF | TD | CL | CN | CX | CC | CO | KM | CG | CD | CK | CR | HR | CU | CW | CY | CZ | CI | DK | DJ | DM | DO | EC | EG | SV | GQ | ER | EE | ET | FK | FO | FJ | FI | FR | GF | PF | TF | GA | GM | GE | DE | GH | GI | GR | GL | GD | GP | GT | GG | GN | GW | GY | HT | HM | VA | HN | HK | HU | IS | IN | ID | IR | IQ | IE | IM | IL | IT | JM | JP | JE | JO | KZ | KE | KI | KP | XK | KW | KG | LA | LV | LB | LS | LR | LY | LI | LT | LU | MO | MK | MG | MW | MY | MV | ML | MT | MQ | MR | MU | YT | MX | MD | MC | MN | ME | MS | MA | MZ | MM | NA | NR | NP | NL | AN | NC | NZ | NI | NE | NG | NU | NF | NO | OM | PK | PS | PA | PG | PY | PE | PH | PN | PL | PT | QA | CM | RE | RO | RU | RW | BL | SH | KN | LC | MF | PM | WS | SM | ST | SA | SN | RS | SC | SL | SG | SX | SK | SI | SB | SO | ZA | GS | KR | SS | ES | LK | VC | SD | SR | SJ | SZ | SE | CH | SY | TW | TJ | TZ | TH | TL | TG | TK | TO | TT | TN | TR | TM | TC | TV | UG | UA | AE | GB | US | UM | UY | UZ | VU | VE | VN | VG | WF | EH | YE | ZM | ZW',
                firstName: 'String',
                formatted: ['String'],
                formattedArea: 'String',
                id: 'ID',
                lastName: 'String',
                latitude: 'Float',
                longitude: 'Float',
                name: 'String',
                phone: 'String',
                province: 'String',
                provinceCode: 'String',
                zip: 'String',
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
      let!(:result) {
        {
          data: {
            customer: {
              createdAt: 'DateTime',
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
      let!(:result) {
        {
          data: {
            customer: {
              defaultAddress: {
                address1: 'String',
                address2: 'String',
                city: 'String',
                company: 'String',
                country: 'String',
                countryCode: 'String',
                countryCodeV2: 'AF | AX | AL | DZ | AD | AO | AI | AG | AR | AM | AW | AU | AT | AZ | BS | BH | BD | BB | BY | BE | BZ | BJ | BM | BT | BO | BQ | BA | BW | BV | BR | IO | BN | BG | BF | BI | KH | CA | CV | KY | CF | TD | CL | CN | CX | CC | CO | KM | CG | CD | CK | CR | HR | CU | CW | CY | CZ | CI | DK | DJ | DM | DO | EC | EG | SV | GQ | ER | EE | ET | FK | FO | FJ | FI | FR | GF | PF | TF | GA | GM | GE | DE | GH | GI | GR | GL | GD | GP | GT | GG | GN | GW | GY | HT | HM | VA | HN | HK | HU | IS | IN | ID | IR | IQ | IE | IM | IL | IT | JM | JP | JE | JO | KZ | KE | KI | KP | XK | KW | KG | LA | LV | LB | LS | LR | LY | LI | LT | LU | MO | MK | MG | MW | MY | MV | ML | MT | MQ | MR | MU | YT | MX | MD | MC | MN | ME | MS | MA | MZ | MM | NA | NR | NP | NL | AN | NC | NZ | NI | NE | NG | NU | NF | NO | OM | PK | PS | PA | PG | PY | PE | PH | PN | PL | PT | QA | CM | RE | RO | RU | RW | BL | SH | KN | LC | MF | PM | WS | SM | ST | SA | SN | RS | SC | SL | SG | SX | SK | SI | SB | SO | ZA | GS | KR | SS | ES | LK | VC | SD | SR | SJ | SZ | SE | CH | SY | TW | TJ | TZ | TH | TL | TG | TK | TO | TT | TN | TR | TM | TC | TV | UG | UA | AE | GB | US | UM | UY | UZ | VU | VE | VN | VG | WF | EH | YE | ZM | ZW',
                firstName: 'String',
                formatted: ['String'],
                formattedArea: 'String',
                id: 'ID',
                lastName: 'String',
                latitude: 'Float',
                longitude: 'Float',
                name: 'String',
                phone: 'String',
                province: 'String',
                provinceCode: 'String',
                zip: 'String',
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
      let!(:result) {
        {
          data: {
            customer: {
              displayName: 'String',
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
      let!(:result) {
        {
          data: {
            customer: {
              email: 'String',
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
      let!(:result) {
        {
          data: {
            customer: {
              firstName: 'String',
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
      let!(:result) {
        {
          data: {
            customer: {
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
                    # ...
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
                    # ...
                  }
                  createdAt
                  defaultAddress {
                    # ...
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
                    # ...
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
                    # ...
                  }
                  discountAllocations {
                    # ...
                  }
                  id
                  quantity
                  title
                  variant {
                    # ...
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
                    # ...
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
                    # ...
                  }
                  name
                  orderNumber
                  phone
                  processedAt
                  shippingAddress {
                    # ...
                  }
                  shippingDiscountAllocations {
                    # ...
                  }
                  statusUrl
                  subtotalPrice
                  successfulFulfillments(first: Int) {
                    # ...
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
                    # ...
                  }
                  discountApplication {
                    # ...
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
      let!(:result) {
        {
          data: {
            customer: {
              lastIncompleteCheckout: {
                appliedGiftCards: {
                  amountUsed: 'Money',
                  balance: 'Money',
                  id: 'ID',
                  lastCharacters: 'String',
                },
                availableShippingRates: {
                  ready: 'Boolean',
                  shippingRates: {
                    # ...
                  },
                },
                completedAt: 'DateTime',
                createdAt: 'DateTime',
                currencyCode: 'USD | EUR | GBP | CAD | AFN | ALL | DZD | AOA | ARS | AMD | AWG | AUD | BBD | AZN | BDT | BSD | BHD | BIF | BYR | BZD | BTN | BAM | BRL | BOB | BWP | BND | BGN | MMK | KHR | CVE | KYD | XAF | CLP | CNY | COP | KMF | CDF | CRC | HRK | CZK | DKK | DOP | XCD | EGP | ETB | XPF | FJD | GMD | GHS | GTQ | GYD | GEL | HTG | HNL | HKD | HUF | ISK | INR | IDR | ILS | IQD | JMD | JPY | JEP | JOD | KZT | KES | KWD | KGS | LAK | LVL | LBP | LSL | LRD | LTL | MGA | MKD | MOP | MWK | MVR | MXN | MYR | MUR | MDL | MAD | MNT | MZN | NAD | NPR | ANG | NZD | NIO | NGN | NOK | OMR | PKR | PGK | PYG | PEN | PHP | PLN | QAR | RON | RUB | RWF | WST | SAR | STD | RSD | SCR | SGD | SDG | SYP | ZAR | KRW | SSP | SBD | LKR | SRD | SZL | SEK | CHF | TWD | THB | TZS | TTD | TND | TRY | TMT | UGX | UAH | AED | UYU | UZS | VUV | VEF | VND | XOF | YER | ZMW',
                customAttributes: {
                  key: 'String',
                  value: 'String',
                },
                customer: {
                  acceptsMarketing: 'Boolean',
                  addresses: [
                    # ...
                  ],
                  createdAt: 'DateTime',
                  defaultAddress: {
                    # ...
                  },
                  displayName: 'String',
                  email: 'String',
                  firstName: 'String',
                  id: 'ID',
                  lastIncompleteCheckout: 'Checkout...',
                  lastName: 'String',
                  orders: [
                    # ...
                  ],
                  phone: 'String',
                  updatedAt: 'DateTime',
                },
                discountApplications: [
                  allocationMethod: 'ACROSS | EACH | ONE',
                  targetSelection: 'ALL | ENTITLED | EXPLICIT',
                  targetType: 'LINE_ITEM | SHIPPING_LINE',
                  value: PricingPercentageValue | MoneyV2,
                ],
                email: 'String',
                id: 'ID',
                lineItems: [
                  customAttributes: {
                    # ...
                  },
                  discountAllocations: {
                    # ...
                  },
                  id: 'ID',
                  quantity: 'Int',
                  title: 'String',
                  variant: {
                    # ...
                  },
                ],
                note: 'String',
                order: {
                  currencyCode: 'USD | EUR | GBP | CAD | AFN | ALL | DZD | AOA | ARS | AMD | AWG | AUD | BBD | AZN | BDT | BSD | BHD | BIF | BYR | BZD | BTN | BAM | BRL | BOB | BWP | BND | BGN | MMK | KHR | CVE | KYD | XAF | CLP | CNY | COP | KMF | CDF | CRC | HRK | CZK | DKK | DOP | XCD | EGP | ETB | XPF | FJD | GMD | GHS | GTQ | GYD | GEL | HTG | HNL | HKD | HUF | ISK | INR | IDR | ILS | IQD | JMD | JPY | JEP | JOD | KZT | KES | KWD | KGS | LAK | LVL | LBP | LSL | LRD | LTL | MGA | MKD | MOP | MWK | MVR | MXN | MYR | MUR | MDL | MAD | MNT | MZN | NAD | NPR | ANG | NZD | NIO | NGN | NOK | OMR | PKR | PGK | PYG | PEN | PHP | PLN | QAR | RON | RUB | RWF | WST | SAR | STD | RSD | SCR | SGD | SDG | SYP | ZAR | KRW | SSP | SBD | LKR | SRD | SZL | SEK | CHF | TWD | THB | TZS | TTD | TND | TRY | TMT | UGX | UAH | AED | UYU | UZS | VUV | VEF | VND | XOF | YER | ZMW',
                  customerLocale: 'String',
                  customerUrl: 'URL',
                  discountApplications: [
                    # ...
                  ],
                  email: 'String',
                  id: 'ID',
                  lineItems: [
                    # ...
                  ],
                  name: 'String',
                  orderNumber: 'Int',
                  phone: 'String',
                  processedAt: 'DateTime',
                  shippingAddress: {
                    # ...
                  },
                  shippingDiscountAllocations: {
                    # ...
                  },
                  statusUrl: 'URL',
                  subtotalPrice: 'Money',
                  successfulFulfillments: [
                    # ...
                  ],
                  totalPrice: 'Money',
                  totalRefunded: 'Money',
                  totalShippingPrice: 'Money',
                  totalTax: 'Money',
                },
                orderStatusUrl: 'URL',
                paymentDue: 'Money',
                ready: 'Boolean',
                requiresShipping: 'Boolean',
                shippingAddress: {
                  address1: 'String',
                  address2: 'String',
                  city: 'String',
                  company: 'String',
                  country: 'String',
                  countryCode: 'String',
                  countryCodeV2: 'AF | AX | AL | DZ | AD | AO | AI | AG | AR | AM | AW | AU | AT | AZ | BS | BH | BD | BB | BY | BE | BZ | BJ | BM | BT | BO | BQ | BA | BW | BV | BR | IO | BN | BG | BF | BI | KH | CA | CV | KY | CF | TD | CL | CN | CX | CC | CO | KM | CG | CD | CK | CR | HR | CU | CW | CY | CZ | CI | DK | DJ | DM | DO | EC | EG | SV | GQ | ER | EE | ET | FK | FO | FJ | FI | FR | GF | PF | TF | GA | GM | GE | DE | GH | GI | GR | GL | GD | GP | GT | GG | GN | GW | GY | HT | HM | VA | HN | HK | HU | IS | IN | ID | IR | IQ | IE | IM | IL | IT | JM | JP | JE | JO | KZ | KE | KI | KP | XK | KW | KG | LA | LV | LB | LS | LR | LY | LI | LT | LU | MO | MK | MG | MW | MY | MV | ML | MT | MQ | MR | MU | YT | MX | MD | MC | MN | ME | MS | MA | MZ | MM | NA | NR | NP | NL | AN | NC | NZ | NI | NE | NG | NU | NF | NO | OM | PK | PS | PA | PG | PY | PE | PH | PN | PL | PT | QA | CM | RE | RO | RU | RW | BL | SH | KN | LC | MF | PM | WS | SM | ST | SA | SN | RS | SC | SL | SG | SX | SK | SI | SB | SO | ZA | GS | KR | SS | ES | LK | VC | SD | SR | SJ | SZ | SE | CH | SY | TW | TJ | TZ | TH | TL | TG | TK | TO | TT | TN | TR | TM | TC | TV | UG | UA | AE | GB | US | UM | UY | UZ | VU | VE | VN | VG | WF | EH | YE | ZM | ZW',
                  firstName: 'String',
                  formatted: ['String'],
                  formattedArea: 'String',
                  id: 'ID',
                  lastName: 'String',
                  latitude: 'Float',
                  longitude: 'Float',
                  name: 'String',
                  phone: 'String',
                  province: 'String',
                  provinceCode: 'String',
                  zip: 'String',
                },
                shippingDiscountAllocations: {
                  allocatedAmount: {
                    # ...
                  },
                  discountApplication: {
                    # ...
                  },
                },
                shippingLine: {
                  handle: 'String',
                  price: 'Money',
                  title: 'String',
                },
                subtotalPrice: 'Money',
                taxExempt: 'Boolean',
                taxesIncluded: 'Boolean',
                totalPrice: 'Money',
                totalTax: 'Money',
                updatedAt: 'DateTime',
                webUrl: 'URL',
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
      let!(:result) {
        {
          data: {
            customer: {
              lastName: 'String',
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
                    # ...
                  }
                  discountAllocations {
                    # ...
                  }
                  quantity
                  title
                  variant {
                    # ...
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
                    # ...
                  }
                  discountApplication {
                    # ...
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
                    # ...
                  }
                  trackingCompany
                  trackingInfo(first: Int) {
                    # ...
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
      let!(:result) {
        {
          data: {
            customer: {
              orders: {
                currencyCode: 'USD | EUR | GBP | CAD | AFN | ALL | DZD | AOA | ARS | AMD | AWG | AUD | BBD | AZN | BDT | BSD | BHD | BIF | BYR | BZD | BTN | BAM | BRL | BOB | BWP | BND | BGN | MMK | KHR | CVE | KYD | XAF | CLP | CNY | COP | KMF | CDF | CRC | HRK | CZK | DKK | DOP | XCD | EGP | ETB | XPF | FJD | GMD | GHS | GTQ | GYD | GEL | HTG | HNL | HKD | HUF | ISK | INR | IDR | ILS | IQD | JMD | JPY | JEP | JOD | KZT | KES | KWD | KGS | LAK | LVL | LBP | LSL | LRD | LTL | MGA | MKD | MOP | MWK | MVR | MXN | MYR | MUR | MDL | MAD | MNT | MZN | NAD | NPR | ANG | NZD | NIO | NGN | NOK | OMR | PKR | PGK | PYG | PEN | PHP | PLN | QAR | RON | RUB | RWF | WST | SAR | STD | RSD | SCR | SGD | SDG | SYP | ZAR | KRW | SSP | SBD | LKR | SRD | SZL | SEK | CHF | TWD | THB | TZS | TTD | TND | TRY | TMT | UGX | UAH | AED | UYU | UZS | VUV | VEF | VND | XOF | YER | ZMW',
                customerLocale: 'String',
                customerUrl: 'URL',
                discountApplications: [
                  allocationMethod: 'ACROSS | EACH | ONE',
                  targetSelection: 'ALL | ENTITLED | EXPLICIT',
                  targetType: 'LINE_ITEM | SHIPPING_LINE',
                  value: PricingPercentageValue | MoneyV2,
                ],
                email: 'String',
                id: 'ID',
                lineItems: [
                  customAttributes: {
                    # ...
                  },
                  discountAllocations: {
                    # ...
                  },
                  quantity: 'Int',
                  title: 'String',
                  variant: {
                    # ...
                  },
                ],
                name: 'String',
                orderNumber: 'Int',
                phone: 'String',
                processedAt: 'DateTime',
                shippingAddress: {
                  address1: 'String',
                  address2: 'String',
                  city: 'String',
                  company: 'String',
                  country: 'String',
                  countryCode: 'String',
                  countryCodeV2: 'AF | AX | AL | DZ | AD | AO | AI | AG | AR | AM | AW | AU | AT | AZ | BS | BH | BD | BB | BY | BE | BZ | BJ | BM | BT | BO | BQ | BA | BW | BV | BR | IO | BN | BG | BF | BI | KH | CA | CV | KY | CF | TD | CL | CN | CX | CC | CO | KM | CG | CD | CK | CR | HR | CU | CW | CY | CZ | CI | DK | DJ | DM | DO | EC | EG | SV | GQ | ER | EE | ET | FK | FO | FJ | FI | FR | GF | PF | TF | GA | GM | GE | DE | GH | GI | GR | GL | GD | GP | GT | GG | GN | GW | GY | HT | HM | VA | HN | HK | HU | IS | IN | ID | IR | IQ | IE | IM | IL | IT | JM | JP | JE | JO | KZ | KE | KI | KP | XK | KW | KG | LA | LV | LB | LS | LR | LY | LI | LT | LU | MO | MK | MG | MW | MY | MV | ML | MT | MQ | MR | MU | YT | MX | MD | MC | MN | ME | MS | MA | MZ | MM | NA | NR | NP | NL | AN | NC | NZ | NI | NE | NG | NU | NF | NO | OM | PK | PS | PA | PG | PY | PE | PH | PN | PL | PT | QA | CM | RE | RO | RU | RW | BL | SH | KN | LC | MF | PM | WS | SM | ST | SA | SN | RS | SC | SL | SG | SX | SK | SI | SB | SO | ZA | GS | KR | SS | ES | LK | VC | SD | SR | SJ | SZ | SE | CH | SY | TW | TJ | TZ | TH | TL | TG | TK | TO | TT | TN | TR | TM | TC | TV | UG | UA | AE | GB | US | UM | UY | UZ | VU | VE | VN | VG | WF | EH | YE | ZM | ZW',
                  firstName: 'String',
                  formatted: ['String'],
                  formattedArea: 'String',
                  id: 'ID',
                  lastName: 'String',
                  latitude: 'Float',
                  longitude: 'Float',
                  name: 'String',
                  phone: 'String',
                  province: 'String',
                  provinceCode: 'String',
                  zip: 'String',
                },
                shippingDiscountAllocations: {
                  allocatedAmount: {
                    # ...
                  },
                  discountApplication: {
                    # ...
                  },
                },
                statusUrl: 'URL',
                subtotalPrice: 'Money',
                successfulFulfillments: [
                  fulfillmentLineItems: [
                    # ...
                  ],
                  trackingCompany: 'String',
                  trackingInfo: [
                    # ...
                  ],
                ],
                totalPrice: 'Money',
                totalRefunded: 'Money',
                totalShippingPrice: 'Money',
                totalTax: 'Money',
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
      let!(:result) {
        {
          data: {
            customer: {
              phone: 'String',
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
      let!(:result) {
        {
          data: {
            customer: {
              updatedAt: 'DateTime',
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