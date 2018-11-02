# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::DiscountCodeApplication' do
    #let!(:discount_code_application) { create(:discount_code_application) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # allocationMethod: The method by which the discount's value is allocated to its entitled items.
    # @return [Types::DiscountApplicationAllocationMethod!]
    describe 'allocationMethod' do
      let!(:query) { '{ discount_code_application { allocationMethod } }' }
      let!(:result) { { data: { discount_code_application: { allocationMethod: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # applicable: Specifies whether the discount code was applied successfully.
    # @return [Types::Boolean!]
    describe 'applicable' do
      let!(:query) { '{ discount_code_application { applicable } }' }
      let!(:result) { { data: { discount_code_application: { applicable: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # code: The string identifying the discount code that was used at the time of application.
    # @return [Types::String!]
    describe 'code' do
      let!(:query) { '{ discount_code_application { code } }' }
      let!(:result) { { data: { discount_code_application: { code: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # targetSelection: Which lines of targetType that the discount is allocated over.
    # @return [Types::DiscountApplicationTargetSelection!]
    describe 'targetSelection' do
      let!(:query) { '{ discount_code_application { targetSelection } }' }
      let!(:result) { { data: { discount_code_application: { targetSelection: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # targetType: The type of line that the discount is applicable towards.
    # @return [Types::DiscountApplicationTargetType!]
    describe 'targetType' do
      let!(:query) { '{ discount_code_application { targetType } }' }
      let!(:result) { { data: { discount_code_application: { targetType: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # value: The value of the discount application.
    # @return [Types::PricingValue!]
    describe 'value' do
      let!(:query) { '{ discount_code_application { value } }' }
      let!(:result) { { data: { discount_code_application: { value: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
