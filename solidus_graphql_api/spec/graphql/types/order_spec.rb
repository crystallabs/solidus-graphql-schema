require 'spec_helper'

describe 'Types' do
  describe 'Order' do
    #let!(:order) {create(:order)}

    # Field: currencyCode: The code of the currency used for the payment.
    # Args: 
    # Returns: Types::CurrencyCode!
    #it 'currency_code' do
    #  query = <<-GRAPHQL
    #    { order { currencyCode() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['currencyCode']).to eq order.currency_code
    #end

    # Field: customerLocale: The locale code in which this specific order happened.
    # Args: 
    # Returns: Types::String
    #it 'customer_locale' do
    #  query = <<-GRAPHQL
    #    { order { customerLocale() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['customerLocale']).to eq order.customer_locale
    #end

    # Field: customerUrl: The unique URL that the customer can use to access the order.
    # Args: 
    # Returns: Types::URL
    #it 'customer_url' do
    #  query = <<-GRAPHQL
    #    { order { customerUrl() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['customerUrl']).to eq order.customer_url
    #end

    # Field: discountApplications: Discounts that have been applied on the order.
    # Args: reverse : Types::Boolean = false
    # Returns: Interfaces::DiscountApplication.connection_type!
    #it 'discount_applications' do
    #  query = <<-GRAPHQL
    #    { order { discountApplications(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['discountApplications']).to eq order.discount_applications
    #end

    # Field: email: The customer's email address.
    # Args: 
    # Returns: Types::String
    #it 'email' do
    #  query = <<-GRAPHQL
    #    { order { email() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['email']).to eq order.email
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { order { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['id']).to eq order.id
    #end

    # Field: lineItems: List of the order’s line items.
    # Args: reverse : Types::Boolean = false
    # Returns: Types::OrderLineItem.connection_type!
    #it 'line_items' do
    #  query = <<-GRAPHQL
    #    { order { lineItems(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['lineItems']).to eq order.line_items
    #end

    # Field: name: Unique identifier for the order that appears on the order. For example, _#1000_ or _Store1001. 
    # Args: 
    # Returns: Types::String!
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { order { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['name']).to eq order.name
    #end

    # Field: orderNumber: A unique numeric identifier for the order for use by shop owner and customer.
    # Args: 
    # Returns: Types::Int!
    #it 'order_number' do
    #  query = <<-GRAPHQL
    #    { order { orderNumber() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['orderNumber']).to eq order.order_number
    #end

    # Field: phone: The customer's phone number.
    # Args: 
    # Returns: Types::String
    #it 'phone' do
    #  query = <<-GRAPHQL
    #    { order { phone() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['phone']).to eq order.phone
    #end

    # Field: processedAt: The date and time when the order was imported. This value can be set to dates in the past when importing from other systems. If no value is provided, it will be auto-generated based on current date and time. 
    # Args: 
    # Returns: Types::DateTime!
    #it 'processed_at' do
    #  query = <<-GRAPHQL
    #    { order { processedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['processedAt']).to eq order.processed_at
    #end

    # Field: shippingAddress: The address to where the order will be shipped.
    # Args: 
    # Returns: Types::MailingAddress
    #it 'shipping_address' do
    #  query = <<-GRAPHQL
    #    { order { shippingAddress() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['shippingAddress']).to eq order.shipping_address
    #end

    # Field: shippingDiscountAllocations: The discounts that have been allocated onto the shipping line by discount applications. 
    # Args: 
    # Returns: [Types::DiscountAllocation!]!
    #it 'shipping_discount_allocations' do
    #  query = <<-GRAPHQL
    #    { order { shippingDiscountAllocations() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['shippingDiscountAllocations']).to eq order.shipping_discount_allocations
    #end

    # Field: statusUrl: The unique URL for the order's status page.
    # Args: 
    # Returns: Types::URL!
    #it 'status_url' do
    #  query = <<-GRAPHQL
    #    { order { statusUrl() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['statusUrl']).to eq order.status_url
    #end

    # Field: subtotalPrice: Price of the order before shipping and taxes.
    # Args: 
    # Returns: Types::Money
    #it 'subtotal_price' do
    #  query = <<-GRAPHQL
    #    { order { subtotalPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['subtotalPrice']).to eq order.subtotal_price
    #end

    # Field: successfulFulfillments: List of the order’s successful fulfillments.
    # Args: first : Types::Int
    # Returns: [Types::Fulfillment!]
    #it 'successful_fulfillments' do
    #  query = <<-GRAPHQL
    #    { order { successfulFulfillments(first:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['successfulFulfillments']).to eq order.successful_fulfillments
    #end

    # Field: totalPrice: The sum of all the prices of all the items in the order, taxes and discounts included (must be positive).
    # Args: 
    # Returns: Types::Money!
    #it 'total_price' do
    #  query = <<-GRAPHQL
    #    { order { totalPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['totalPrice']).to eq order.total_price
    #end

    # Field: totalRefunded: The total amount that has been refunded.
    # Args: 
    # Returns: Types::Money!
    #it 'total_refunded' do
    #  query = <<-GRAPHQL
    #    { order { totalRefunded() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['totalRefunded']).to eq order.total_refunded
    #end

    # Field: totalShippingPrice: The total cost of shipping.
    # Args: 
    # Returns: Types::Money!
    #it 'total_shipping_price' do
    #  query = <<-GRAPHQL
    #    { order { totalShippingPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'order')
    #  expect(result['totalShippingPrice']).to eq order.total_shipping_price
    #end

    # Field: totalTax: The total cost of taxes.
    # Args: 
    # Returns: Types::Money
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

