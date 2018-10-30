class Spree::GraphQL::Schema::Payloads::CustomerAccessTokenRenew < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CustomerAccessTokenRenewPayload'
  description nil
  include ::Spree::GraphQL::Payloads::CustomerAccessTokenRenew

  field :customer_access_token, ::Spree::GraphQL::Schema::Types::CustomerAccessToken, null: true do
    description %q{The renewed customer access token object.}
  end
  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end
