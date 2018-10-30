class Spree::GraphQL::Schema::Payloads::CustomerAddressCreate < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CustomerAddressCreatePayload'
  description nil
  include ::Spree::GraphQL::Payloads::CustomerAddressCreate

  field :customer_address, ::Spree::GraphQL::Schema::Types::MailingAddress, null: true do
    description %q{The new customer address object.}
  end
  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end
