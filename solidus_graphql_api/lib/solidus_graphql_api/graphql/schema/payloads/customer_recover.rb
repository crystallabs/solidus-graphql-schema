class Spree::GraphQL::Schema::Payloads::CustomerRecover < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CustomerRecoverPayload'
  description nil
  include ::Spree::GraphQL::Payloads::CustomerRecover

  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end
