module Spree::GraphQL::Types::Customer


  # Field: acceptsMarketing: Indicates whether the customer has consented to be sent marketing material via email.
  # Args: 
  # Returns: ::GraphQL::Types::Boolean, null: false
  def accepts_marketing()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: addresses: A list of addresses for the customer.
  # Args: reverse = false
  # Returns: Types::MailingAddress.connection_type, null: false
  def addresses(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: createdAt: The date and time when the customer was created.
  # Args: 
  # Returns: Types::DateTime, null: false
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: defaultAddress: The customer’s default address.
  # Args: 
  # Returns: Types::MailingAddress, null: true
  def default_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: displayName: The customer’s name, email or phone number.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def display_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: email: The customer’s email address.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: firstName: The customer’s first name.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: A unique identifier for the customer.
  # Args: 
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastIncompleteCheckout: The customer's most recently updated, incomplete checkout.
  # Args: 
  # Returns: Types::Checkout, null: true
  def last_incomplete_checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastName: The customer’s last name.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: orders: The orders associated with the customer.
  # Args: reverse = false, sort_key = 'ID', query
  # Returns: Types::Order.connection_type, null: false
  def orders(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: phone: The customer’s phone number.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: updatedAt: The date and time when the customer information was updated.
  # Args: 
  # Returns: Types::DateTime, null: false
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

