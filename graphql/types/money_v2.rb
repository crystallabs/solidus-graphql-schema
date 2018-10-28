module Spree::GraphQL::Types::MoneyV2


  # Decimal money amount.
  # Returns: Types::Decimal, null: false
  def amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Currency of the money.
  # Returns: Types::CurrencyCode, null: false
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A monetary value with currency. To format currencies, combine this type's amount and currencyCode fields with your client's locale. For example, in JavaScript you could use Intl.NumberFormat: ```js new Intl.NumberFormat(locale, { style: 'currency', currency: currencyCode }).format(amount); ``` Other formatting libraries include: * iOS - [NumberFormatter](https://developer.apple.com/documentation/foundation/numberformatter) * Android - [NumberFormat](https://developer.android.com/reference/java/text/NumberFormat.html) * PHP - [NumberFormatter](http://php.net/manual/en/class.numberformatter.php) For a more general solution, the [Unicode CLDR number formatting database] is available with many implementations (such as [TwitterCldr](https://github.com/twitter/twitter-cldr-rb)). 
  # Returns: Types::CurrencyCode, null: false
  def money_v2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

