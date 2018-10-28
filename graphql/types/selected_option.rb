module Spree::GraphQL::Types::SelectedOption


  # Field: name: The product option’s name.
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: value: The product option’s value.
  # Returns: ::GraphQL::Types::String, null: false
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

