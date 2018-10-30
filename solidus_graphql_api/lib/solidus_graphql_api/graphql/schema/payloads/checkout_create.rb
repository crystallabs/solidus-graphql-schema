class Spree::GraphQL::Schema::Payloads::CheckoutCreate < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CheckoutCreatePayload'
  description nil
  include ::Spree::GraphQL::Payloads::CheckoutCreate

  field :checkout, ::Spree::GraphQL::Schema::Types::Checkout, null: true do
    description %q{The new checkout object.}
  end
  field :checkout_user_errors, [::Spree::GraphQL::Schema::Types::CheckoutUserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end