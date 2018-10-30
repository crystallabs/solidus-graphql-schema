require 'spec_helper'

describe 'Types' do
  describe 'Order' do
    #let!(:order) {create(:order)}

    # @graphql currencyCode The code of the currency used for the payment.
    # @return [Types::CurrencyCode!]
    #it 'currency_code' do
    #  query = <<-GRAPHQL
    #    { order { currencyCode() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['currencyCode']).to eq order.currency_code
    #end

    # @graphql customerLocale The locale code in which this specific order happened.
    # @return [Types::String]
    #it 'customer_locale' do
    #  query = <<-GRAPHQL
    #    { order { customerLocale() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['customerLocale']).to eq order.customer_locale
    #end

    # @graphql customerUrl The unique URL that the customer can use to access the order.
    # @return [Types::URL]
    #it 'customer_url' do
    #  query = <<-GRAPHQL
    #    { order { customerUrl() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['customerUrl']).to eq order.customer_url
    #end

    # @graphql discountApplications Discounts that have been applied on the order.
    # @param reverse [Types::Boolean] (false)
    # @return [Interfaces::DiscountApplication.connection_type!]
    #it 'discount_applications' do
    #  query = <<-GRAPHQL
    #    { order { discountApplications(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['discountApplications']).to eq order.discount_applications
    #end

    # @graphql email The customer's email address.
    # @return [Types::String]
    #it 'email' do
    #  query = <<-GRAPHQL
    #    { order { email() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['email']).to eq order.email
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { order { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['id']).to eq order.id
    #end

    # @graphql lineItems List of the order’s line items.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::OrderLineItem.connection_type!]
    #it 'line_items' do
    #  query = <<-GRAPHQL
    #    { order { lineItems(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['lineItems']).to eq order.line_items
    #end

    # @graphql name Unique identifier for the order that appears on the order. For example, _#1000_ or _Store1001. 
    # @return [Types::String!]
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { order { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['name']).to eq order.name
    #end

    # @graphql orderNumber A unique numeric identifier for the order for use by shop owner and customer.
    # @return [Types::Int!]
    #it 'order_number' do
    #  query = <<-GRAPHQL
    #    { order { orderNumber() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['orderNumber']).to eq order.order_number
    #end

    # @graphql phone The customer's phone number.
    # @return [Types::String]
    #it 'phone' do
    #  query = <<-GRAPHQL
    #    { order { phone() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['phone']).to eq order.phone
    #end

    # @graphql processedAt The date and time when the order was imported. This value can be set to dates in the past when importing from other systems. If no value is provided, it will be auto-generated based on current date and time. 
    # @return [Types::DateTime!]
    #it 'processed_at' do
    #  query = <<-GRAPHQL
    #    { order { processedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['processedAt']).to eq order.processed_at
    #end

    # @graphql shippingAddress The address to where the order will be shipped.
    # @return [Types::MailingAddress]
    #it 'shipping_address' do
    #  query = <<-GRAPHQL
    #    { order { shippingAddress() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['shippingAddress']).to eq order.shipping_address
    #end

    # @graphql shippingDiscountAllocations The discounts that have been allocated onto the shipping line by discount applications. 
    # @return [[Types::DiscountAllocation!]!]
    #it 'shipping_discount_allocations' do
    #  query = <<-GRAPHQL
    #    { order { shippingDiscountAllocations() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['shippingDiscountAllocations']).to eq order.shipping_discount_allocations
    #end

    # @graphql statusUrl The unique URL for the order's status page.
    # @return [Types::URL!]
    #it 'status_url' do
    #  query = <<-GRAPHQL
    #    { order { statusUrl() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['statusUrl']).to eq order.status_url
    #end

    # @graphql subtotalPrice Price of the order before shipping and taxes.
    # @return [Types::Money]
    #it 'subtotal_price' do
    #  query = <<-GRAPHQL
    #    { order { subtotalPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['subtotalPrice']).to eq order.subtotal_price
    #end

    # @graphql successfulFulfillments List of the order’s successful fulfillments.
    # @param first [Types::Int]
    # @return [[Types::Fulfillment!]]
    #it 'successful_fulfillments' do
    #  query = <<-GRAPHQL
    #    { order { successfulFulfillments(first:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['successfulFulfillments']).to eq order.successful_fulfillments
    #end

    # @graphql totalPrice The sum of all the prices of all the items in the order, taxes and discounts included (must be positive).
    # @return [Types::Money!]
    #it 'total_price' do
    #  query = <<-GRAPHQL
    #    { order { totalPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['totalPrice']).to eq order.total_price
    #end

    # @graphql totalRefunded The total amount that has been refunded.
    # @return [Types::Money!]
    #it 'total_refunded' do
    #  query = <<-GRAPHQL
    #    { order { totalRefunded() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['totalRefunded']).to eq order.total_refunded
    #end

    # @graphql totalShippingPrice The total cost of shipping.
    # @return [Types::Money!]
    #it 'total_shipping_price' do
    #  query = <<-GRAPHQL
    #    { order { totalShippingPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['totalShippingPrice']).to eq order.total_shipping_price
    #end

    # @graphql totalTax The total cost of taxes.
    # @return [Types::Money]
    #it 'total_tax' do
    #  query = <<-GRAPHQL
    #    { order { totalTax() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['totalTax']).to eq order.total_tax
    #end

  end
end
