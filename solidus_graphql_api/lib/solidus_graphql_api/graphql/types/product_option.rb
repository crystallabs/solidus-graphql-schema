module Spree::GraphQL::Types::ProductOption
  include ::Spree::GraphQL::Interfaces::Node

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: name: The product option’s name.
  # Args: 
  # Returns: Types::String!
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: values: The corresponding value to the product option name.
  # Args: 
  # Returns: [Types::String!]!
  def values()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

