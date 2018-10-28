module Spree::GraphQL::Inputs::Attribute


  # Specifies the input fields required for an attribute.
  # Returns: 
  def attribute_input(key:, value:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

