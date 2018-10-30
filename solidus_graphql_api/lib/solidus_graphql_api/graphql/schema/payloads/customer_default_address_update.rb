class Spree::GraphQL::Schema::Payloads::CustomerDefaultAddressUpdate < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CustomerDefaultAddressUpdatePayload'
  description nil
  include ::Spree::GraphQL::Payloads::CustomerDefaultAddressUpdate

  field :customer, ::Spree::GraphQL::Schema::Types::Customer, null: true do
    description %q{The updated customer object.}
  end
  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end