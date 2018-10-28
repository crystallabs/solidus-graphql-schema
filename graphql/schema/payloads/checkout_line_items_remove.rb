class Spree::GraphQL::Schema::Payloads::CheckoutLineItemsRemove < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'CheckoutLineItemsRemovePayload'
  description nil

  
  include ::Spree::GraphQL::Payloads::CheckoutLineItemsRemove

  field :checkout, ::Spree::GraphQL::Schema::Types::Checkout, null: true do
    description nil
  end
  field :user_errors, [::Spree::GraphQL::Schema::Types::UserError], null: false do
    description %q{List of errors that occurred executing the mutation.}
  end
end
