class Spree::GraphQL::Schema::Payloads::CheckoutCustomerDisassociate < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CheckoutCustomerDisassociatePayload'
  description nil

  
  include ::Spree::GraphQL::Payloads::CheckoutCustomerDisassociate

  field :checkout, ::Spree::GraphQL::Schema::Types::Checkout, null: false do
    description %q{The updated checkout object.}
  end
  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end
