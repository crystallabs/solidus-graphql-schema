module Spree::GraphQL::Types::Customer


  # Indicates whether the customer has consented to be sent marketing material via email.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def accepts_marketing()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A list of addresses for the customer.
  # Returns: Types::MailingAddress.connection_type, null: false
  def addresses(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the customer was created.
  # Returns: Types::DateTime, null: false
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The customer’s default address.
  # Returns: Types::MailingAddress, null: true
  def default_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The customer’s name, email or phone number.
  # Returns: ::GraphQL::Types::String, null: false
  def display_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The customer’s email address.
  # Returns: ::GraphQL::Types::String, null: true
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The customer’s first name.
  # Returns: ::GraphQL::Types::String, null: true
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A unique identifier for the customer.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The customer's most recently updated, incomplete checkout.
  # Returns: Types::Checkout, null: true
  def last_incomplete_checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The customer’s last name.
  # Returns: ::GraphQL::Types::String, null: true
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The orders associated with the customer.
  # Returns: Types::Order.connection_type, null: false
  def orders(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The customer’s phone number.
  # Returns: ::GraphQL::Types::String, null: true
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the customer information was updated.
  # Returns: Types::DateTime, null: false
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A customer represents a customer account with the shop. Customer accounts store contact information for the customer, saving logged-in customers the trouble of having to provide it at every checkout.
  # Returns: Types::DateTime, null: false
  def customer()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

