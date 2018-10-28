module Spree::GraphQL::Types::CreditCard


  # 
  # Returns: ::GraphQL::Types::String, null: true
  def brand()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::Int, null: true
  def expiry_month()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::Int, null: true
  def expiry_year()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::String, null: true
  def first_digits()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::String, null: true
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::String, null: true
  def last_digits()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::String, null: true
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Masked credit card number with only the last 4 digits displayed
  # Returns: ::GraphQL::Types::String, null: true
  def masked_number()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Credit card information used for a payment.
  # Returns: ::GraphQL::Types::String, null: true
  def credit_card()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

