# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::UserError' do
    #let!(:user_error) { create(:user_error) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # field: Path to the input field which caused the error.
    # @return [[Types::String!]]
    describe 'field' do
      let!(:query) { '{ user_error { field } }' }
      let!(:result) { { data: { user_error: { field: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # message: The error message.
    # @return [Types::String!]
    describe 'message' do
      let!(:query) { '{ user_error { message } }' }
      let!(:result) { { data: { user_error: { message: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
