# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::CheckoutUserError' do
    #let!(:checkout_user_error) { create(:checkout_user_error) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # code: Error code to uniquely identify the error.
    # @return [Types::CheckoutErrorCode]
    describe 'code' do
      let!(:query) { '{ checkout_user_error { code } }' }
      let!(:result) { { data: { checkout_user_error: { code: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # field: Path to the input field which caused the error.
    # @return [[Types::String!]]
    describe 'field' do
      let!(:query) { '{ checkout_user_error { field } }' }
      let!(:result) { { data: { checkout_user_error: { field: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # message: The error message.
    # @return [Types::String!]
    describe 'message' do
      let!(:query) { '{ checkout_user_error { message } }' }
      let!(:result) { { data: { checkout_user_error: { message: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
