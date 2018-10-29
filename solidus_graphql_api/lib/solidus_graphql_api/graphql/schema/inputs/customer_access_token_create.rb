class Spree::GraphQL::Schema::Inputs::CustomerAccessTokenCreate < Spree::GraphQL::Schema::Types::BaseInput
  graphql_name 'CustomerAccessTokenCreateInput'
  description %q{Specifies the input fields required to create a customer access token.}

  
  include ::Spree::GraphQL::Inputs::CustomerAccessTokenCreate
  argument :email, ::GraphQL::Types::String, required: true, description: %q{The email associated to the customer.}
  argument :password, ::GraphQL::Types::String, required: true, description: %q{The login password to be used by the customer.}

end
