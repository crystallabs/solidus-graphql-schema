class Spree::GraphQL::Schema::Payloads::CustomerAddressUpdate < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CustomerAddressUpdatePayload'
  description nil
  include ::Spree::GraphQL::Payloads::CustomerAddressUpdate

  field :customer_address, ::Spree::GraphQL::Schema::Types::MailingAddress, null: true do
    description %q{The customer’s updated mailing address.}
  end
  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end