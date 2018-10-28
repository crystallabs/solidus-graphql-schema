module Spree::GraphQL::Types::SelectedOption


  # Field: name: The product option’s name.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: value: The product option’s value.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

