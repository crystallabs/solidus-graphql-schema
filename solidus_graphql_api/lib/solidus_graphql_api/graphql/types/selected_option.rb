module Spree::GraphQL::Types::SelectedOption


  # Field: name: The product option’s name.
  # Args: 
  # Returns: Types::String!
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: value: The product option’s value.
  # Args: 
  # Returns: Types::String!
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

