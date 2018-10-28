module Spree::GraphQL::Types::Attribute


  # Field: key: Key or name of the attribute.
  # Returns: ::GraphQL::Types::String, null: false
  def key()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: value: Value of the attribute.
  # Returns: ::GraphQL::Types::String, null: true
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

