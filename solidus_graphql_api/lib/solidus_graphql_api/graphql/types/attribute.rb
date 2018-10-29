module Spree::GraphQL::Types::Attribute


  # Field: key: Key or name of the attribute.
  # Args: 
  # Returns: Types::String!
  def key()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: value: Value of the attribute.
  # Args: 
  # Returns: Types::String
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

