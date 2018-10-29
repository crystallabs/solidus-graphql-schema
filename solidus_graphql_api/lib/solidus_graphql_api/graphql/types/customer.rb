module Spree::GraphQL::Types::Customer


  # Field: acceptsMarketing: Indicates whether the customer has consented to be sent marketing material via email.
  # Args: 
  # Returns: Types::Boolean!
  def accepts_marketing()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: addresses: A list of addresses for the customer.
  # Args: reverse : Types::Boolean = false
  # Returns: Types::MailingAddress.connection_type!
  def addresses(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: createdAt: The date and time when the customer was created.
  # Args: 
  # Returns: Types::DateTime!
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: defaultAddress: The customer’s default address.
  # Args: 
  # Returns: Types::MailingAddress
  def default_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: displayName: The customer’s name, email or phone number.
  # Args: 
  # Returns: Types::String!
  def display_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: email: The customer’s email address.
  # Args: 
  # Returns: Types::String
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: firstName: The customer’s first name.
  # Args: 
  # Returns: Types::String
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: A unique identifier for the customer.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastIncompleteCheckout: The customer's most recently updated, incomplete checkout.
  # Args: 
  # Returns: Types::Checkout
  def last_incomplete_checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastName: The customer’s last name.
  # Args: 
  # Returns: Types::String
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: orders: The orders associated with the customer.
  # Args: reverse : Types::Boolean = false, sort_key : Types::OrderSortKeys = 'ID', query : Types::String
  # Returns: Types::Order.connection_type!
  def orders(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: phone: The customer’s phone number.
  # Args: 
  # Returns: Types::String
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: updatedAt: The date and time when the customer information was updated.
  # Args: 
  # Returns: Types::DateTime!
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

