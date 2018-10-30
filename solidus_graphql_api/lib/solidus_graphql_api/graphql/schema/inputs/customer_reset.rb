class Spree::GraphQL::Schema::Inputs::CustomerReset < Spree::GraphQL::Schema::Types::BaseInput
  graphql_name 'CustomerResetInput'
  description %q{Specifies the fields required to reset a Customer’s password.}
  include ::Spree::GraphQL::Inputs::CustomerReset

  argument :reset_token, ::GraphQL::Types::String, required: true, description: %q{The reset token required to reset the customer’s password.}
  argument :password, ::GraphQL::Types::String, required: true, description: %q{New password that will be set as part of the reset password process.}
end
