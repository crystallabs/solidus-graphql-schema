module Spree::GraphQL::Types::CreditCard


  # Field: brand
  # Args: 
  # Returns: Types::String
  def brand()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: expiryMonth
  # Args: 
  # Returns: Types::Int
  def expiry_month()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: expiryYear
  # Args: 
  # Returns: Types::Int
  def expiry_year()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: firstDigits
  # Args: 
  # Returns: Types::String
  def first_digits()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: firstName
  # Args: 
  # Returns: Types::String
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastDigits
  # Args: 
  # Returns: Types::String
  def last_digits()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastName
  # Args: 
  # Returns: Types::String
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: maskedNumber: Masked credit card number with only the last 4 digits displayed
  # Args: 
  # Returns: Types::String
  def masked_number()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

