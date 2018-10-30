class Spree::GraphQL::Schema::Payloads::CustomerActivate < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CustomerActivatePayload'
  description nil
  include ::Spree::GraphQL::Payloads::CustomerActivate

  field :customer, ::Spree::GraphQL::Schema::Types::Customer, null: true do
    description %q{The customer object.}
  end
  field :customer_access_token, ::Spree::GraphQL::Schema::Types::CustomerAccessToken, null: true do
    description %q{A newly created customer access token object for the customer.}
  end
  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end