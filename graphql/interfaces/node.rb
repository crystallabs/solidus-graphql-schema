module Spree::GraphQL::Interfaces::Node


  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # An object with an ID to support global identification.
  # Returns: ::GraphQL::Types::ID, null: false
  def node()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

