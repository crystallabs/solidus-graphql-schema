# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Order' do
    #let!(:order) { create(:order) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # currencyCode: The code of the currency used for the payment.
    # @return [Types::CurrencyCode!]
    describe 'currencyCode' do
      let!(:query) { '{ order { currencyCode } }' }
      let!(:result) { { data: { order: { currencyCode: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerLocale: The locale code in which this specific order happened.
    # @return [Types::String]
    describe 'customerLocale' do
      let!(:query) { '{ order { customerLocale } }' }
      let!(:result) { { data: { order: { customerLocale: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customerUrl: The unique URL that the customer can use to access the order.
    # @return [Types::URL]
    describe 'customerUrl' do
      let!(:query) { '{ order { customerUrl } }' }
      let!(:result) { { data: { order: { customerUrl: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # discountApplications: Discounts that have been applied on the order.
    # @param reverse [Types::Boolean] (false)
    # @return [Interfaces::DiscountApplication.connection_type!]
    describe 'discountApplications' do
      let!(:query) { '{ order { discountApplications } }' }
      let!(:result) { { data: { order: { discountApplications: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # email: The customer's email address.
    # @return [Types::String]
    describe 'email' do
      let!(:query) { '{ order { email } }' }
      let!(:result) { { data: { order: { email: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ order { id } }' }
      let!(:result) { { data: { order: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # lineItems: List of the order’s line items.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::OrderLineItem.connection_type!]
    describe 'lineItems' do
      let!(:query) { '{ order { lineItems } }' }
      let!(:result) { { data: { order: { lineItems: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # name: Unique identifier for the order that appears on the order. For example, _#1000_ or _Store1001. 
    # @return [Types::String!]
    describe 'name' do
      let!(:query) { '{ order { name } }' }
      let!(:result) { { data: { order: { name: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # orderNumber: A unique numeric identifier for the order for use by shop owner and customer.
    # @return [Types::Int!]
    describe 'orderNumber' do
      let!(:query) { '{ order { orderNumber } }' }
      let!(:result) { { data: { order: { orderNumber: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # phone: The customer's phone number.
    # @return [Types::String]
    describe 'phone' do
      let!(:query) { '{ order { phone } }' }
      let!(:result) { { data: { order: { phone: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # processedAt: The date and time when the order was imported. This value can be set to dates in the past when importing from other systems. If no value is provided, it will be auto-generated based on current date and time. 
    # @return [Types::DateTime!]
    describe 'processedAt' do
      let!(:query) { '{ order { processedAt } }' }
      let!(:result) { { data: { order: { processedAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # shippingAddress: The address to where the order will be shipped.
    # @return [Types::MailingAddress]
    describe 'shippingAddress' do
      let!(:query) { '{ order { shippingAddress } }' }
      let!(:result) { { data: { order: { shippingAddress: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # shippingDiscountAllocations: The discounts that have been allocated onto the shipping line by discount applications. 
    # @return [[Types::DiscountAllocation!]!]
    describe 'shippingDiscountAllocations' do
      let!(:query) { '{ order { shippingDiscountAllocations } }' }
      let!(:result) { { data: { order: { shippingDiscountAllocations: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # statusUrl: The unique URL for the order's status page.
    # @return [Types::URL!]
    describe 'statusUrl' do
      let!(:query) { '{ order { statusUrl } }' }
      let!(:result) { { data: { order: { statusUrl: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # subtotalPrice: Price of the order before shipping and taxes.
    # @return [Types::Money]
    describe 'subtotalPrice' do
      let!(:query) { '{ order { subtotalPrice } }' }
      let!(:result) { { data: { order: { subtotalPrice: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # successfulFulfillments: List of the order’s successful fulfillments.
    # @param first [Types::Int]
    # @return [[Types::Fulfillment!]]
    describe 'successfulFulfillments' do
      let!(:query) { '{ order { successfulFulfillments } }' }
      let!(:result) { { data: { order: { successfulFulfillments: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # totalPrice: The sum of all the prices of all the items in the order, taxes and discounts included (must be positive).
    # @return [Types::Money!]
    describe 'totalPrice' do
      let!(:query) { '{ order { totalPrice } }' }
      let!(:result) { { data: { order: { totalPrice: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # totalRefunded: The total amount that has been refunded.
    # @return [Types::Money!]
    describe 'totalRefunded' do
      let!(:query) { '{ order { totalRefunded } }' }
      let!(:result) { { data: { order: { totalRefunded: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # totalShippingPrice: The total cost of shipping.
    # @return [Types::Money!]
    describe 'totalShippingPrice' do
      let!(:query) { '{ order { totalShippingPrice } }' }
      let!(:result) { { data: { order: { totalShippingPrice: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # totalTax: The total cost of taxes.
    # @return [Types::Money]
    describe 'totalTax' do
      let!(:query) { '{ order { totalTax } }' }
      let!(:result) { { data: { order: { totalTax: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
