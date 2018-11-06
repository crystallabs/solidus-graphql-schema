# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Fulfillment' do
    let!(:fulfillment) { create(:fulfillment) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # fulfillmentLineItems: List of the fulfillment's line items.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @return [Types::FulfillmentLineItem!]
    describe 'fulfillmentLineItems' do
      let!(:query) {
        %q{
          query {
            fulfillment {
              fulfillmentLineItems(
                first: Int,
                after: "",
                last: Int,
                before: "",
                reverse: false
              ) {
                lineItem {
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
                quantity
              }
            }
          }
        }
      }
      let!(:result) {
        {
          data: {
            fulfillment: {
              fulfillmentLineItems: {
                lineItem: {
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
                },
                quantity: 'Int',
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

    # trackingCompany: The name of the tracking company.
    # @return [Types::String]
    describe 'trackingCompany' do
      let!(:query) {
        %q{
          query {
            fulfillment {
              trackingCompany
            }
          }
        }
      }
      let!(:result) {
        {
          data: {
            fulfillment: {
              trackingCompany: 'String',
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

    # trackingInfo: Tracking information associated with the fulfillment, such as the tracking number and tracking URL.
    # @param first [Types::Int]
    # @return [[Types::FulfillmentTrackingInfo!]!]
    describe 'trackingInfo' do
      let!(:query) {
        %q{
          query {
            fulfillment {
              trackingInfo(first: Int) {
                number
                url
              }
            }
          }
        }
      }
      let!(:result) {
        {
          data: {
            fulfillment: {
              trackingInfo: {
                number: 'String',
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