require 'spec_helper'

describe 'Types' do
  describe 'MailingAddress' do
    #let!(:mailing_address) {create(:mailing_address)}

    # @graphql address1 The first line of the address. Typically the street address or PO Box number. 
    # @return [Types::String]
    #it 'address1' do
    #  query = <<-GRAPHQL
    #    { mailing_address { address1() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['address1']).to eq mailing_address.address1
    #end

    # @graphql address2 The second line of the address. Typically the number of the apartment, suite, or unit. 
    # @return [Types::String]
    #it 'address2' do
    #  query = <<-GRAPHQL
    #    { mailing_address { address2() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['address2']).to eq mailing_address.address2
    #end

    # @graphql city The name of the city, district, village, or town. 
    # @return [Types::String]
    #it 'city' do
    #  query = <<-GRAPHQL
    #    { mailing_address { city() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['city']).to eq mailing_address.city
    #end

    # @graphql company The name of the customer's company or organization. 
    # @return [Types::String]
    #it 'company' do
    #  query = <<-GRAPHQL
    #    { mailing_address { company() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['company']).to eq mailing_address.company
    #end

    # @graphql country The name of the country. 
    # @return [Types::String]
    #it 'country' do
    #  query = <<-GRAPHQL
    #    { mailing_address { country() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['country']).to eq mailing_address.country
    #end

    # @graphql countryCodeV2 The two-letter code for the country of the address. For example, US. 
    # @return [Types::CountryCode]
    #it 'country_code_v2' do
    #  query = <<-GRAPHQL
    #    { mailing_address { countryCodeV2() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['countryCodeV2']).to eq mailing_address.country_code_v2
    #end

    # @graphql firstName The first name of the customer.
    # @return [Types::String]
    #it 'first_name' do
    #  query = <<-GRAPHQL
    #    { mailing_address { firstName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['firstName']).to eq mailing_address.first_name
    #end

    # @graphql formatted A formatted version of the address, customized by the provided arguments.
    # @param with_name [Types::Boolean] (false)
    # @param with_company [Types::Boolean] (true)
    # @return [[Types::String!]!]
    #it 'formatted' do
    #  query = <<-GRAPHQL
    #    { mailing_address { formatted(with_name:, with_company:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['formatted']).to eq mailing_address.formatted
    #end

    # @graphql formattedArea A comma-separated list of the values for city, province, and country.
    # @return [Types::String]
    #it 'formatted_area' do
    #  query = <<-GRAPHQL
    #    { mailing_address { formattedArea() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['formattedArea']).to eq mailing_address.formatted_area
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { mailing_address { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['id']).to eq mailing_address.id
    #end

    # @graphql lastName The last name of the customer.
    # @return [Types::String]
    #it 'last_name' do
    #  query = <<-GRAPHQL
    #    { mailing_address { lastName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['lastName']).to eq mailing_address.last_name
    #end

    # @graphql latitude The latitude coordinate of the customer address.
    # @return [Types::Float]
    #it 'latitude' do
    #  query = <<-GRAPHQL
    #    { mailing_address { latitude() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['latitude']).to eq mailing_address.latitude
    #end

    # @graphql longitude The longitude coordinate of the customer address.
    # @return [Types::Float]
    #it 'longitude' do
    #  query = <<-GRAPHQL
    #    { mailing_address { longitude() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['longitude']).to eq mailing_address.longitude
    #end

    # @graphql name The full name of the customer, based on firstName and lastName. 
    # @return [Types::String]
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { mailing_address { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['name']).to eq mailing_address.name
    #end

    # @graphql phone A unique phone number for the customer. Formatted using E.164 standard. For example, _+16135551111_. 
    # @return [Types::String]
    #it 'phone' do
    #  query = <<-GRAPHQL
    #    { mailing_address { phone() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['phone']).to eq mailing_address.phone
    #end

    # @graphql province The region of the address, such as the province, state, or district.
    # @return [Types::String]
    #it 'province' do
    #  query = <<-GRAPHQL
    #    { mailing_address { province() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['province']).to eq mailing_address.province
    #end

    # @graphql provinceCode The two-letter code for the region. For example, ON. 
    # @return [Types::String]
    #it 'province_code' do
    #  query = <<-GRAPHQL
    #    { mailing_address { provinceCode() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['provinceCode']).to eq mailing_address.province_code
    #end

    # @graphql zip The zip or postal code of the address.
    # @return [Types::String]
    #it 'zip' do
    #  query = <<-GRAPHQL
    #    { mailing_address { zip() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['zip']).to eq mailing_address.zip
    #end

  end
end
