# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Checkout' do
    let!(:checkout) { create(:checkout) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # appliedGiftCards
    # @return [[Types::AppliedGiftCard!]!]
    describe 'appliedGiftCards' do
      let!(:query) { '{ checkout { appliedGiftCards } }' }
      let!(:result) { { data: { checkout: { appliedGiftCards: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # availableShippingRates: The available shipping rates for this Checkout. Should only be used when checkout `requiresShipping` is `true` and the shipping address is valid. 
    # @return [Types::AvailableShippingRates]
    describe 'availableShippingRates' do
      let!(:query) { '{ checkout { availableShippingRates } }' }
      let!(:result) { { data: { checkout: { availableShippingRates: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # completedAt: The date and time when the checkout was completed.
    # @return [Types::DateTime]
    describe 'completedAt' do
      let!(:query) { '{ checkout { completedAt } }' }
      let!(:result) { { data: { checkout: { completedAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # createdAt: The date and time when the checkout was created.
    # @return [Types::DateTime!]
    describe 'createdAt' do
      let!(:query) { '{ checkout { createdAt } }' }
      let!(:result) { { data: { checkout: { createdAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # currencyCode: The currency code for the Checkout.
    # @return [Types::CurrencyCode!]
    describe 'currencyCode' do
      let!(:query) { '{ checkout { currencyCode } }' }
      let!(:result) { { data: { checkout: { currencyCode: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customAttributes: A list of extra information that is added to the checkout.
    # @return [[Types::Attribute!]!]
    describe 'customAttributes' do
      let!(:query) { '{ checkout { customAttributes } }' }
      let!(:result) { { data: { checkout: { customAttributes: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # discountApplications: Discounts that have been applied on the checkout.
    # @param reverse [Types::Boolean] (false)
    # @return [Interfaces::DiscountApplication.connection_type!]
    describe 'discountApplications' do
      let!(:query) { '{ checkout { discountApplications } }' }
      let!(:result) { { data: { checkout: { discountApplications: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # email: The email attached to this checkout.
    # @return [Types::String]
    describe 'email' do
      let!(:query) { '{ checkout { email } }' }
      let!(:result) { { data: { checkout: { email: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ checkout { id } }' }
      let!(:result) { { data: { checkout: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # lineItems: A list of line item objects, each one containing information about an item in the checkout.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::CheckoutLineItem.connection_type!]
    describe 'lineItems' do
      let!(:query) { '{ checkout { lineItems } }' }
      let!(:result) { { data: { checkout: { lineItems: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # note
    # @return [Types::String]
    describe 'note' do
      let!(:query) { '{ checkout { note } }' }
      let!(:result) { { data: { checkout: { note: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # order: The resulting order from a paid checkout.
    # @return [Types::Order]
    describe 'order' do
      let!(:query) { '{ checkout { order } }' }
      let!(:result) { { data: { checkout: { order: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # orderStatusUrl: The Order Status Page for this Checkout, null when checkout is not completed.
    # @return [Types::URL]
    describe 'orderStatusUrl' do
      let!(:query) { '{ checkout { orderStatusUrl } }' }
      let!(:result) { { data: { checkout: { orderStatusUrl: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # paymentDue: The amount left to be paid. This is equal to the cost of the line items, taxes and shipping minus discounts and gift cards.
    # @return [Types::Money!]
    describe 'paymentDue' do
      let!(:query) { '{ checkout { paymentDue } }' }
      let!(:result) { { data: { checkout: { paymentDue: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # ready: Whether or not the Checkout is ready and can be completed. Checkouts may have asynchronous operations that can take time to finish. If you want to complete a checkout or ensure all the fields are populated and up to date, polling is required until the value is true. 
    # @return [Types::Boolean!]
    describe 'ready' do
      let!(:query) { '{ checkout { ready } }' }
      let!(:result) { { data: { checkout: { ready: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # requiresShipping: States whether or not the fulfillment requires shipping.
    # @return [Types::Boolean!]
    describe 'requiresShipping' do
      let!(:query) { '{ checkout { requiresShipping } }' }
      let!(:result) { { data: { checkout: { requiresShipping: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # shippingAddress: The shipping address to where the line items will be shipped.
    # @return [Types::MailingAddress]
    describe 'shippingAddress' do
      let!(:query) { '{ checkout { shippingAddress } }' }
      let!(:result) { { data: { checkout: { shippingAddress: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # shippingDiscountAllocations: The discounts that have been allocated onto the shipping line by discount applications. 
    # @return [[Types::DiscountAllocation!]!]
    describe 'shippingDiscountAllocations' do
      let!(:query) { '{ checkout { shippingDiscountAllocations } }' }
      let!(:result) { { data: { checkout: { shippingDiscountAllocations: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # shippingLine: Once a shipping rate is selected by the customer it is transitioned to a `shipping_line` object.
    # @return [Types::ShippingRate]
    describe 'shippingLine' do
      let!(:query) { '{ checkout { shippingLine } }' }
      let!(:result) { { data: { checkout: { shippingLine: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # subtotalPrice: Price of the checkout before shipping and taxes.
    # @return [Types::Money!]
    describe 'subtotalPrice' do
      let!(:query) { '{ checkout { subtotalPrice } }' }
      let!(:result) { { data: { checkout: { subtotalPrice: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # taxExempt: Specifies if the Checkout is tax exempt.
    # @return [Types::Boolean!]
    describe 'taxExempt' do
      let!(:query) { '{ checkout { taxExempt } }' }
      let!(:result) { { data: { checkout: { taxExempt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # taxesIncluded: Specifies if taxes are included in the line item and shipping line prices.
    # @return [Types::Boolean!]
    describe 'taxesIncluded' do
      let!(:query) { '{ checkout { taxesIncluded } }' }
      let!(:result) { { data: { checkout: { taxesIncluded: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # totalPrice: The sum of all the prices of all the items in the checkout, taxes and discounts included.
    # @return [Types::Money!]
    describe 'totalPrice' do
      let!(:query) { '{ checkout { totalPrice } }' }
      let!(:result) { { data: { checkout: { totalPrice: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # totalTax: The sum of all the taxes applied to the line items and shipping lines in the checkout.
    # @return [Types::Money!]
    describe 'totalTax' do
      let!(:query) { '{ checkout { totalTax } }' }
      let!(:result) { { data: { checkout: { totalTax: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # updatedAt: The date and time when the checkout was last updated.
    # @return [Types::DateTime!]
    describe 'updatedAt' do
      let!(:query) { '{ checkout { updatedAt } }' }
      let!(:result) { { data: { checkout: { updatedAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # webUrl: The url pointing to the checkout accessible from the web.
    # @return [Types::URL!]
    describe 'webUrl' do
      let!(:query) { '{ checkout { webUrl } }' }
      let!(:result) { { data: { checkout: { webUrl: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
