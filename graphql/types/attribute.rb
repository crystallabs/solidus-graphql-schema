module Spree::GraphQL::Types::Attribute


  # Key or name of the attribute.
  # Returns: ::GraphQL::Types::String, null: false
  def key()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Value of the attribute.
  # Returns: ::GraphQL::Types::String, null: true
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Represents a generic custom attribute.
  # Returns: ::GraphQL::Types::String, null: true
  def attribute()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

