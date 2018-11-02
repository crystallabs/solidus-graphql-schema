# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::CustomerUserError' do
    #let!(:customer_user_error) { create(:customer_user_error) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # code: Error code to uniquely identify the error.
    # @return [Types::CustomerErrorCode]
    describe 'code' do
      let!(:query) { '{ customer_user_error { code } }' }
      let!(:result) { { data: { customer_user_error: { code: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # field: Path to the input field which caused the error.
    # @return [[Types::String!]]
    describe 'field' do
      let!(:query) { '{ customer_user_error { field } }' }
      let!(:result) { { data: { customer_user_error: { field: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # message: The error message.
    # @return [Types::String!]
    describe 'message' do
      let!(:query) { '{ customer_user_error { message } }' }
      let!(:result) { { data: { customer_user_error: { message: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
