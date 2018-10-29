require 'spec_helper'

describe 'Types' do
  describe 'MailingAddress' do
    #let!(:mailing_address) {create(:mailing_address)}

    # Field: address1: The first line of the address. Typically the street address or PO Box number. 
    # Args: 
    # Returns: Types::String
    #it 'address1' do
    #  query = <<-GRAPHQL
    #    { mailing_address { address1() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['address1']).to eq mailing_address.address1
    #end

    # Field: address2: The second line of the address. Typically the number of the apartment, suite, or unit. 
    # Args: 
    # Returns: Types::String
    #it 'address2' do
    #  query = <<-GRAPHQL
    #    { mailing_address { address2() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['address2']).to eq mailing_address.address2
    #end

    # Field: city: The name of the city, district, village, or town. 
    # Args: 
    # Returns: Types::String
    #it 'city' do
    #  query = <<-GRAPHQL
    #    { mailing_address { city() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['city']).to eq mailing_address.city
    #end

    # Field: company: The name of the customer's company or organization. 
    # Args: 
    # Returns: Types::String
    #it 'company' do
    #  query = <<-GRAPHQL
    #    { mailing_address { company() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['company']).to eq mailing_address.company
    #end

    # Field: country: The name of the country. 
    # Args: 
    # Returns: Types::String
    #it 'country' do
    #  query = <<-GRAPHQL
    #    { mailing_address { country() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['country']).to eq mailing_address.country
    #end

    # Field: countryCodeV2: The two-letter code for the country of the address. For example, US. 
    # Args: 
    # Returns: Types::CountryCode
    #it 'country_code_v2' do
    #  query = <<-GRAPHQL
    #    { mailing_address { countryCodeV2() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['countryCodeV2']).to eq mailing_address.country_code_v2
    #end

    # Field: firstName: The first name of the customer.
    # Args: 
    # Returns: Types::String
    #it 'first_name' do
    #  query = <<-GRAPHQL
    #    { mailing_address { firstName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['firstName']).to eq mailing_address.first_name
    #end

    # Field: formatted: A formatted version of the address, customized by the provided arguments.
    # Args: with_name : Types::Boolean = false, with_company : Types::Boolean = true
    # Returns: [Types::String!]!
    #it 'formatted' do
    #  query = <<-GRAPHQL
    #    { mailing_address { formatted(with_name:, with_company:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['formatted']).to eq mailing_address.formatted
    #end

    # Field: formattedArea: A comma-separated list of the values for city, province, and country.
    # Args: 
    # Returns: Types::String
    #it 'formatted_area' do
    #  query = <<-GRAPHQL
    #    { mailing_address { formattedArea() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['formattedArea']).to eq mailing_address.formatted_area
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { mailing_address { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['id']).to eq mailing_address.id
    #end

    # Field: lastName: The last name of the customer.
    # Args: 
    # Returns: Types::String
    #it 'last_name' do
    #  query = <<-GRAPHQL
    #    { mailing_address { lastName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['lastName']).to eq mailing_address.last_name
    #end

    # Field: latitude: The latitude coordinate of the customer address.
    # Args: 
    # Returns: Types::Float
    #it 'latitude' do
    #  query = <<-GRAPHQL
    #    { mailing_address { latitude() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['latitude']).to eq mailing_address.latitude
    #end

    # Field: longitude: The longitude coordinate of the customer address.
    # Args: 
    # Returns: Types::Float
    #it 'longitude' do
    #  query = <<-GRAPHQL
    #    { mailing_address { longitude() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['longitude']).to eq mailing_address.longitude
    #end

    # Field: name: The full name of the customer, based on firstName and lastName. 
    # Args: 
    # Returns: Types::String
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { mailing_address { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['name']).to eq mailing_address.name
    #end

    # Field: phone: A unique phone number for the customer. Formatted using E.164 standard. For example, _+16135551111_. 
    # Args: 
    # Returns: Types::String
    #it 'phone' do
    #  query = <<-GRAPHQL
    #    { mailing_address { phone() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['phone']).to eq mailing_address.phone
    #end

    # Field: province: The region of the address, such as the province, state, or district.
    # Args: 
    # Returns: Types::String
    #it 'province' do
    #  query = <<-GRAPHQL
    #    { mailing_address { province() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['province']).to eq mailing_address.province
    #end

    # Field: provinceCode: The two-letter code for the region. For example, ON. 
    # Args: 
    # Returns: Types::String
    #it 'province_code' do
    #  query = <<-GRAPHQL
    #    { mailing_address { provinceCode() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'mailing_address')
    #  expect(result['provinceCode']).to eq mailing_address.province_code
    #end

    # Field: zip: The zip or postal code of the address.
    # Args: 
    # Returns: Types::String
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

