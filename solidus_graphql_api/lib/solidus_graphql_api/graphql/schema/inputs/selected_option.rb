class Spree::GraphQL::Schema::Inputs::SelectedOption < Spree::GraphQL::Schema::Types::BaseInput
  graphql_name 'SelectedOptionInput'
  description %q{Specifies the input fields required for a selected option.}
  include ::Spree::GraphQL::Inputs::SelectedOption

  argument :name, ::GraphQL::Types::String, required: true, description: %q{The product option’s name.}
  argument :value, ::GraphQL::Types::String, required: true, description: %q{The product option’s value.}
end