# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::FulfillmentLineItem' do
    let!(:fulfillment_line_item) { create(:fulfillment_line_item) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # lineItem: The associated order's line item.
    # @return [Types::OrderLineItem!]
    describe 'lineItem' do
      let!(:query) {
        %q{
          query {
            fulfillmentLineItem {
              lineItem {
                customAttributes {
                  key
                  value
                }
                discountAllocations {
                  allocatedAmount {
                    # ...
                  }
                  discountApplication {
                    # ...
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
                    # ...
                  }
                  price
                  product {
                    # ...
                  }
                  selectedOptions {
                    # ...
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
      let!(:result) {
        {
          data: {
            fulfillmentLineItem: {
              lineItem: {
                customAttributes: {
                  key: 'String',
                  value: 'String',
                },
                discountAllocations: {
                  allocatedAmount: {
                    # ...
                  },
                  discountApplication: {
                    # ...
                  },
                },
                quantity: 'Int',
                title: 'String',
                variant: {
                  available: 'Boolean',
                  availableForSale: 'Boolean',
                  compareAtPrice: 'Money',
                  id: 'ID',
                  image: [
                    # ...
                  ],
                  price: 'Money',
                  product: {
                    # ...
                  },
                  selectedOptions: {
                    # ...
                  },
                  sku: 'String',
                  title: 'String',
                  weight: 'Float',
                  weightUnit: 'KILOGRAMS | GRAMS | POUNDS | OUNCES',
                },
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

    # quantity: The amount fulfilled in this fulfillment.
    # @return [Types::Int!]
    describe 'quantity' do
      let!(:query) {
        %q{
          query {
            fulfillmentLineItem {
              quantity
            }
          }
        }
      }
      let!(:result) {
        {
          data: {
            fulfillmentLineItem: {
              quantity: 'Int',
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