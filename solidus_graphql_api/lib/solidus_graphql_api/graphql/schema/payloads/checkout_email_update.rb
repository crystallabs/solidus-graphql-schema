class Spree::GraphQL::Schema::Payloads::CheckoutEmailUpdate < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CheckoutEmailUpdatePayload'
  description nil
  include ::Spree::GraphQL::Payloads::CheckoutEmailUpdate

  field :checkout, ::Spree::GraphQL::Schema::Types::Checkout, null: false do
    description %q{The checkout object with the updated email.}
  end
  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end