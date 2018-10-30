class Spree::GraphQL::Schema::Inputs::TokenizedPaymentV2 < Spree::GraphQL::Schema::Types::BaseInput
  graphql_name 'TokenizedPaymentInputV2'
  description %q{Specifies the fields required to complete a checkout with
a tokenized payment.
}
  include ::Spree::GraphQL::Inputs::TokenizedPaymentV2

  argument :payment_amount, ::Spree::GraphQL::Schema::Inputs::Money, required: true, description: %q{The amount and currency of the payment.}
  argument :idempotency_key, ::GraphQL::Types::String, required: true, description: %q{A unique client generated key used to avoid duplicate charges. When a duplicate payment is found, the original is returned instead of creating a new one.}
  argument :billing_address, ::Spree::GraphQL::Schema::Inputs::MailingAddress, required: true, description: %q{The billing address for the payment.}
  argument :type, ::GraphQL::Types::String, required: true, description: %q{The type of payment token.}
  argument :payment_data, ::GraphQL::Types::String, required: true, description: %q{A simple string or JSON containing the required payment data for the tokenized payment.}
  argument :test, ::GraphQL::Types::Boolean, required: false, default_value: false, description: %q{Executes the payment in test mode if possible. Defaults to `false`.}
  argument :identifier, ::GraphQL::Types::String, required: false, description: %q{Public Hash Key used for AndroidPay payments only.}
end