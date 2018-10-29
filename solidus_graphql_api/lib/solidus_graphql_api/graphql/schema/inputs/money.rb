class Spree::GraphQL::Schema::Inputs::Money < Spree::GraphQL::Schema::Types::BaseInput
  graphql_name 'MoneyInput'
  description %q{Specifies the fields for a monetary value with currency.}

  
  include ::Spree::GraphQL::Inputs::Money
  argument :amount, ::Spree::GraphQL::Schema::Types::Decimal, required: true, description: %q{Decimal money amount.}
  argument :currency_code, ::Spree::GraphQL::Schema::Types::CurrencyCode, required: true, description: %q{Currency of the money.}

end
