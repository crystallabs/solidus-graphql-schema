# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::CustomerUserError' do
    let!(:customer_user_error) { create(:customer_user_error) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # code: Error code to uniquely identify the error.
    # @return [Types::CustomerErrorCode]
    describe 'code' do
      let!(:query) {
        %q{
          query {
            customerUserError {
              code
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # field: Path to the input field which caused the error.
    # @return [[Types::String!]]
    describe 'field' do
      let!(:query) {
        %q{
          query {
            customerUserError {
              field
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # message: The error message.
    # @return [Types::String!]
    describe 'message' do
      let!(:query) {
        %q{
          query {
            customerUserError {
              message
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
  end
end