require 'spec_helper'

describe 'Types' do
  describe 'Checkout' do
    #let!(:checkout) {create(:checkout)}

    # @graphql appliedGiftCards
    # @return [[Types::AppliedGiftCard!]!]
    #it 'applied_gift_cards' do
    #  query = <<-GRAPHQL
    #    { checkout { appliedGiftCards() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['appliedGiftCards']).to eq checkout.applied_gift_cards
    #end

    # @graphql availableShippingRates The available shipping rates for this Checkout. Should only be used when checkout `requiresShipping` is `true` and the shipping address is valid. 
    # @return [Types::AvailableShippingRates]
    #it 'available_shipping_rates' do
    #  query = <<-GRAPHQL
    #    { checkout { availableShippingRates() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['availableShippingRates']).to eq checkout.available_shipping_rates
    #end

    # @graphql completedAt The date and time when the checkout was completed.
    # @return [Types::DateTime]
    #it 'completed_at' do
    #  query = <<-GRAPHQL
    #    { checkout { completedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['completedAt']).to eq checkout.completed_at
    #end

    # @graphql createdAt The date and time when the checkout was created.
    # @return [Types::DateTime!]
    #it 'created_at' do
    #  query = <<-GRAPHQL
    #    { checkout { createdAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['createdAt']).to eq checkout.created_at
    #end

    # @graphql currencyCode The currency code for the Checkout.
    # @return [Types::CurrencyCode!]
    #it 'currency_code' do
    #  query = <<-GRAPHQL
    #    { checkout { currencyCode() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['currencyCode']).to eq checkout.currency_code
    #end

    # @graphql customAttributes A list of extra information that is added to the checkout.
    # @return [[Types::Attribute!]!]
    #it 'custom_attributes' do
    #  query = <<-GRAPHQL
    #    { checkout { customAttributes() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['customAttributes']).to eq checkout.custom_attributes
    #end

    # @graphql discountApplications Discounts that have been applied on the checkout.
    # @param reverse [Types::Boolean] (false)
    # @return [Interfaces::DiscountApplication.connection_type!]
    #it 'discount_applications' do
    #  query = <<-GRAPHQL
    #    { checkout { discountApplications(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['discountApplications']).to eq checkout.discount_applications
    #end

    # @graphql email The email attached to this checkout.
    # @return [Types::String]
    #it 'email' do
    #  query = <<-GRAPHQL
    #    { checkout { email() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['email']).to eq checkout.email
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { checkout { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['id']).to eq checkout.id
    #end

    # @graphql lineItems A list of line item objects, each one containing information about an item in the checkout.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::CheckoutLineItem.connection_type!]
    #it 'line_items' do
    #  query = <<-GRAPHQL
    #    { checkout { lineItems(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['lineItems']).to eq checkout.line_items
    #end

    # @graphql note
    # @return [Types::String]
    #it 'note' do
    #  query = <<-GRAPHQL
    #    { checkout { note() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['note']).to eq checkout.note
    #end

    # @graphql order The resulting order from a paid checkout.
    # @return [Types::Order]
    #it 'order' do
    #  query = <<-GRAPHQL
    #    { checkout { order() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['order']).to eq checkout.order
    #end

    # @graphql orderStatusUrl The Order Status Page for this Checkout, null when checkout is not completed.
    # @return [Types::URL]
    #it 'order_status_url' do
    #  query = <<-GRAPHQL
    #    { checkout { orderStatusUrl() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['orderStatusUrl']).to eq checkout.order_status_url
    #end

    # @graphql paymentDue The amount left to be paid. This is equal to the cost of the line items, taxes and shipping minus discounts and gift cards.
    # @return [Types::Money!]
    #it 'payment_due' do
    #  query = <<-GRAPHQL
    #    { checkout { paymentDue() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['paymentDue']).to eq checkout.payment_due
    #end

    # @graphql ready Whether or not the Checkout is ready and can be completed. Checkouts may have asynchronous operations that can take time to finish. If you want to complete a checkout or ensure all the fields are populated and up to date, polling is required until the value is true. 
    # @return [Types::Boolean!]
    #it 'ready' do
    #  query = <<-GRAPHQL
    #    { checkout { ready() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['ready']).to eq checkout.ready
    #end

    # @graphql requiresShipping States whether or not the fulfillment requires shipping.
    # @return [Types::Boolean!]
    #it 'requires_shipping' do
    #  query = <<-GRAPHQL
    #    { checkout { requiresShipping() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['requiresShipping']).to eq checkout.requires_shipping
    #end

    # @graphql shippingAddress The shipping address to where the line items will be shipped.
    # @return [Types::MailingAddress]
    #it 'shipping_address' do
    #  query = <<-GRAPHQL
    #    { checkout { shippingAddress() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['shippingAddress']).to eq checkout.shipping_address
    #end

    # @graphql shippingDiscountAllocations The discounts that have been allocated onto the shipping line by discount applications. 
    # @return [[Types::DiscountAllocation!]!]
    #it 'shipping_discount_allocations' do
    #  query = <<-GRAPHQL
    #    { checkout { shippingDiscountAllocations() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['shippingDiscountAllocations']).to eq checkout.shipping_discount_allocations
    #end

    # @graphql shippingLine Once a shipping rate is selected by the customer it is transitioned to a `shipping_line` object.
    # @return [Types::ShippingRate]
    #it 'shipping_line' do
    #  query = <<-GRAPHQL
    #    { checkout { shippingLine() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['shippingLine']).to eq checkout.shipping_line
    #end

    # @graphql subtotalPrice Price of the checkout before shipping and taxes.
    # @return [Types::Money!]
    #it 'subtotal_price' do
    #  query = <<-GRAPHQL
    #    { checkout { subtotalPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['subtotalPrice']).to eq checkout.subtotal_price
    #end

    # @graphql taxExempt Specifies if the Checkout is tax exempt.
    # @return [Types::Boolean!]
    #it 'tax_exempt' do
    #  query = <<-GRAPHQL
    #    { checkout { taxExempt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['taxExempt']).to eq checkout.tax_exempt
    #end

    # @graphql taxesIncluded Specifies if taxes are included in the line item and shipping line prices.
    # @return [Types::Boolean!]
    #it 'taxes_included' do
    #  query = <<-GRAPHQL
    #    { checkout { taxesIncluded() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['taxesIncluded']).to eq checkout.taxes_included
    #end

    # @graphql totalPrice The sum of all the prices of all the items in the checkout, taxes and discounts included.
    # @return [Types::Money!]
    #it 'total_price' do
    #  query = <<-GRAPHQL
    #    { checkout { totalPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['totalPrice']).to eq checkout.total_price
    #end

    # @graphql totalTax The sum of all the taxes applied to the line items and shipping lines in the checkout.
    # @return [Types::Money!]
    #it 'total_tax' do
    #  query = <<-GRAPHQL
    #    { checkout { totalTax() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['totalTax']).to eq checkout.total_tax
    #end

    # @graphql updatedAt The date and time when the checkout was last updated.
    # @return [Types::DateTime!]
    #it 'updated_at' do
    #  query = <<-GRAPHQL
    #    { checkout { updatedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['updatedAt']).to eq checkout.updated_at
    #end

    # @graphql webUrl The url pointing to the checkout accessible from the web.
    # @return [Types::URL!]
    #it 'web_url' do
    #  query = <<-GRAPHQL
    #    { checkout { webUrl() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'checkout')
    #  expect(result['webUrl']).to eq checkout.web_url
    #end

  end
end
