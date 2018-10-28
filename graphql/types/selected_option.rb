module Spree::GraphQL::Types::SelectedOption


  # The product option’s name.
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The product option’s value.
  # Returns: ::GraphQL::Types::String, null: false
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Custom properties that a shop owner can use to define product variants. Multiple options can exist. Options are represented as: option1, option2, option3, etc. 
  # Returns: ::GraphQL::Types::String, null: false
  def selected_option()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

