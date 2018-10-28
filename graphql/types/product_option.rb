module Spree::GraphQL::Types::ProductOption
  include ::Spree::GraphQL::Interfaces::Node

  # Field: id: Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: name: The product option’s name.
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: values: The corresponding value to the product option name.
  # Returns: [::GraphQL::Types::String], null: false
  def values()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

