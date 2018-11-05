# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::CustomerAccessToken' do
    let!(:customer_access_token) { create(:customer_access_token) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # accessToken: The customer’s access token.
    # @return [Types::String!]
    describe 'accessToken' do
      let!(:query) {
        %q{
          query {
            customerAccessToken {
              accessToken
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
    # expiresAt: The date and time when the customer access token expires.
    # @return [Types::DateTime!]
    describe 'expiresAt' do
      let!(:query) {
        %q{
          query {
            customerAccessToken {
              expiresAt
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