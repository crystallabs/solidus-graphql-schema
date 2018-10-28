module Spree::GraphQL::Types::ProductOption
  include ::Spree::GraphQL::Interfaces::Node

  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The product option’s name.
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The corresponding value to the product option name.
  # Returns: [::GraphQL::Types::String], null: false
  def values()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Custom product property names like "Size", "Color", and "Material". Products are based on permutations of these options. A product may have a maximum of 3 options. 255 characters limit each. 
  # Returns: [::GraphQL::Types::String], null: false
  def product_option()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

