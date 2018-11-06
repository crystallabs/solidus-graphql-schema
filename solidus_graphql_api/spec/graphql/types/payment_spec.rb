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
      let!(:result) {
        {
          data: {
            payment: {
              amount: 'Money',
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
      let!(:result) {
        {
          data: {
            payment: {
              billingAddress: {
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
            payment: {
              checkout: {
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
                  addresses: [{
                    # ...
                  }],
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
                  orders: [{
                    # ...
                  }],
                  phone: 'String',
                  updatedAt: 'DateTime',
                },
                discountApplications: [{
                  allocationMethod: 'ACROSS | EACH | ONE',
                  targetSelection: 'ALL | ENTITLED | EXPLICIT',
                  targetType: 'LINE_ITEM | SHIPPING_LINE',
                  value: PricingPercentageValue | MoneyV2,
                }],
                email: 'String',
                id: 'ID',
                lineItems: [{
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
                }],
                note: 'String',
                order: {
                  currencyCode: 'USD | EUR | GBP | CAD | AFN | ALL | DZD | AOA | ARS | AMD | AWG | AUD | BBD | AZN | BDT | BSD | BHD | BIF | BYR | BZD | BTN | BAM | BRL | BOB | BWP | BND | BGN | MMK | KHR | CVE | KYD | XAF | CLP | CNY | COP | KMF | CDF | CRC | HRK | CZK | DKK | DOP | XCD | EGP | ETB | XPF | FJD | GMD | GHS | GTQ | GYD | GEL | HTG | HNL | HKD | HUF | ISK | INR | IDR | ILS | IQD | JMD | JPY | JEP | JOD | KZT | KES | KWD | KGS | LAK | LVL | LBP | LSL | LRD | LTL | MGA | MKD | MOP | MWK | MVR | MXN | MYR | MUR | MDL | MAD | MNT | MZN | NAD | NPR | ANG | NZD | NIO | NGN | NOK | OMR | PKR | PGK | PYG | PEN | PHP | PLN | QAR | RON | RUB | RWF | WST | SAR | STD | RSD | SCR | SGD | SDG | SYP | ZAR | KRW | SSP | SBD | LKR | SRD | SZL | SEK | CHF | TWD | THB | TZS | TTD | TND | TRY | TMT | UGX | UAH | AED | UYU | UZS | VUV | VEF | VND | XOF | YER | ZMW',
                  customerLocale: 'String',
                  customerUrl: 'URL',
                  discountApplications: [{
                    # ...
                  }],
                  email: 'String',
                  id: 'ID',
                  lineItems: [{
                    # ...
                  }],
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
                  successfulFulfillments: [{
                    # ...
                  }],
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
      let!(:result) {
        {
          data: {
            payment: {
              creditCard: {
                brand: 'String',
                expiryMonth: 'Int',
                expiryYear: 'Int',
                firstDigits: 'String',
                firstName: 'String',
                lastDigits: 'String',
                lastName: 'String',
                maskedNumber: 'String',
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
      let!(:result) {
        {
          data: {
            payment: {
              errorMessage: 'String',
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
      let!(:result) {
        {
          data: {
            payment: {
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
      let!(:result) {
        {
          data: {
            payment: {
              idempotencyKey: 'String',
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
      let!(:result) {
        {
          data: {
            payment: {
              ready: 'Boolean',
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
      let!(:result) {
        {
          data: {
            payment: {
              test: 'Boolean',
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
      let!(:result) {
        {
          data: {
            payment: {
              transaction: {
                amount: 'Money',
                kind: 'SALE | CAPTURE | AUTHORIZATION | EMV_AUTHORIZATION | CHANGE',
                status: 'PENDING | SUCCESS | FAILURE | ERROR',
                test: 'Boolean',
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