# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Customer' do
    #let!(:customer) { create(:customer) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # acceptsMarketing: Indicates whether the customer has consented to be sent marketing material via email.
    # @return [Types::Boolean!]
    describe 'acceptsMarketing' do
      let!(:query) { '{ customer { acceptsMarketing } }' }
      let!(:result) { { data: { customer: { acceptsMarketing: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # addresses: A list of addresses for the customer.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::MailingAddress.connection_type!]
    describe 'addresses' do
      let!(:query) { '{ customer { addresses } }' }
      let!(:result) { { data: { customer: { addresses: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # createdAt: The date and time when the customer was created.
    # @return [Types::DateTime!]
    describe 'createdAt' do
      let!(:query) { '{ customer { createdAt } }' }
      let!(:result) { { data: { customer: { createdAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # defaultAddress: The customer’s default address.
    # @return [Types::MailingAddress]
    describe 'defaultAddress' do
      let!(:query) { '{ customer { defaultAddress } }' }
      let!(:result) { { data: { customer: { defaultAddress: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # displayName: The customer’s name, email or phone number.
    # @return [Types::String!]
    describe 'displayName' do
      let!(:query) { '{ customer { displayName } }' }
      let!(:result) { { data: { customer: { displayName: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # email: The customer’s email address.
    # @return [Types::String]
    describe 'email' do
      let!(:query) { '{ customer { email } }' }
      let!(:result) { { data: { customer: { email: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # firstName: The customer’s first name.
    # @return [Types::String]
    describe 'firstName' do
      let!(:query) { '{ customer { firstName } }' }
      let!(:result) { { data: { customer: { firstName: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: A unique identifier for the customer.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ customer { id } }' }
      let!(:result) { { data: { customer: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # lastIncompleteCheckout: The customer's most recently updated, incomplete checkout.
    # @return [Types::Checkout]
    describe 'lastIncompleteCheckout' do
      let!(:query) { '{ customer { lastIncompleteCheckout } }' }
      let!(:result) { { data: { customer: { lastIncompleteCheckout: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # lastName: The customer’s last name.
    # @return [Types::String]
    describe 'lastName' do
      let!(:query) { '{ customer { lastName } }' }
      let!(:result) { { data: { customer: { lastName: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # orders: The orders associated with the customer.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::OrderSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Order.connection_type!]
    describe 'orders' do
      let!(:query) { '{ customer { orders } }' }
      let!(:result) { { data: { customer: { orders: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # phone: The customer’s phone number.
    # @return [Types::String]
    describe 'phone' do
      let!(:query) { '{ customer { phone } }' }
      let!(:result) { { data: { customer: { phone: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # updatedAt: The date and time when the customer information was updated.
    # @return [Types::DateTime!]
    describe 'updatedAt' do
      let!(:query) { '{ customer { updatedAt } }' }
      let!(:result) { { data: { customer: { updatedAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
