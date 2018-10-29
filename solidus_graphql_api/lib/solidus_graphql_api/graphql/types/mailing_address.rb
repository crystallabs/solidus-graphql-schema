module Spree::GraphQL::Types::MailingAddress
  include ::Spree::GraphQL::Interfaces::Node

  # Field: address1: The first line of the address. Typically the street address or PO Box number. 
  # Args: 
  # Returns: Types::String
  def address1()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: address2: The second line of the address. Typically the number of the apartment, suite, or unit. 
  # Args: 
  # Returns: Types::String
  def address2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: city: The name of the city, district, village, or town. 
  # Args: 
  # Returns: Types::String
  def city()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: company: The name of the customer's company or organization. 
  # Args: 
  # Returns: Types::String
  def company()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: country: The name of the country. 
  # Args: 
  # Returns: Types::String
  def country()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: countryCodeV2: The two-letter code for the country of the address. For example, US. 
  # Args: 
  # Returns: Types::CountryCode
  def country_code_v2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: firstName: The first name of the customer.
  # Args: 
  # Returns: Types::String
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: formatted: A formatted version of the address, customized by the provided arguments.
  # Args: with_name : Types::Boolean = false, with_company : Types::Boolean = true
  # Returns: [Types::String!]!
  def formatted(with_name:, with_company:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: formattedArea: A comma-separated list of the values for city, province, and country.
  # Args: 
  # Returns: Types::String
  def formatted_area()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastName: The last name of the customer.
  # Args: 
  # Returns: Types::String
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: latitude: The latitude coordinate of the customer address.
  # Args: 
  # Returns: Types::Float
  def latitude()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: longitude: The longitude coordinate of the customer address.
  # Args: 
  # Returns: Types::Float
  def longitude()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: name: The full name of the customer, based on firstName and lastName. 
  # Args: 
  # Returns: Types::String
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: phone: A unique phone number for the customer. Formatted using E.164 standard. For example, _+16135551111_. 
  # Args: 
  # Returns: Types::String
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: province: The region of the address, such as the province, state, or district.
  # Args: 
  # Returns: Types::String
  def province()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: provinceCode: The two-letter code for the region. For example, ON. 
  # Args: 
  # Returns: Types::String
  def province_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: zip: The zip or postal code of the address.
  # Args: 
  # Returns: Types::String
  def zip()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

