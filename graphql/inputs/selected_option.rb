module Spree::GraphQL::Inputs::SelectedOption


  # Specifies the input fields required for a selected option.
  # Returns: 
  def selected_option_input(name:, value:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

