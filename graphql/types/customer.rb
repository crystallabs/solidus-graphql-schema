module Spree::GraphQL::Types::Customer


  # Field: acceptsMarketing: Indicates whether the customer has consented to be sent marketing material via email.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def accepts_marketing()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: addresses: A list of addresses for the customer.
  # Defaults: reverse = false
  # Returns: Types::MailingAddress.connection_type, null: false
  def addresses(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: createdAt: The date and time when the customer was created.
  # Returns: Types::DateTime, null: false
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: defaultAddress: The customer’s default address.
  # Returns: Types::MailingAddress, null: true
  def default_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: displayName: The customer’s name, email or phone number.
  # Returns: ::GraphQL::Types::String, null: false
  def display_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: email: The customer’s email address.
  # Returns: ::GraphQL::Types::String, null: true
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: firstName: The customer’s first name.
  # Returns: ::GraphQL::Types::String, null: true
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: A unique identifier for the customer.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastIncompleteCheckout: The customer's most recently updated, incomplete checkout.
  # Returns: Types::Checkout, null: true
  def last_incomplete_checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastName: The customer’s last name.
  # Returns: ::GraphQL::Types::String, null: true
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: orders: The orders associated with the customer.
  # Defaults: reverse = false, sort_key = 'ID'
  # Returns: Types::Order.connection_type, null: false
  def orders(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: phone: The customer’s phone number.
  # Returns: ::GraphQL::Types::String, null: true
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: updatedAt: The date and time when the customer information was updated.
  # Returns: Types::DateTime, null: false
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

