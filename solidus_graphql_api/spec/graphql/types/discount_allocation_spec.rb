# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::DiscountAllocation' do
    let!(:discount_allocation) { create(:discount_allocation) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # allocatedAmount: Amount of discount allocated.
    # @return [Types::MoneyV2!]
    describe 'allocatedAmount' do
      let!(:query) {
        %q{
          query {
            discountAllocation {
              allocatedAmount {
                amount
                currencyCode
              }
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
    # discountApplication: The discount this allocated amount originated from.
    # @return [Interfaces::DiscountApplication!]
    describe 'discountApplication' do
      let!(:query) {
        %q{
          query {
            discountAllocation {
              discountApplication {
                allocationMethod
                targetSelection
                targetType
                value
              }
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