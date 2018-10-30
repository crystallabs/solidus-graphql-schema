class Spree::GraphQL::Schema::Payloads::CheckoutShippingLineUpdate < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CheckoutShippingLineUpdatePayload'
  description nil
  include ::Spree::GraphQL::Payloads::CheckoutShippingLineUpdate

  field :checkout, ::Spree::GraphQL::Schema::Types::Checkout, null: true do
    description %q{The updated checkout object.}
  end
  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end
