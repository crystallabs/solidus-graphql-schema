module Spree::GraphQL::Types::Domain


  # Field: host: The host name of the domain (eg: `example.com`).
  # Args: 
  # Returns: Types::String!
  def host()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: sslEnabled: Whether SSL is enabled or not.
  # Args: 
  # Returns: Types::Boolean!
  def ssl_enabled()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: url: The URL of the domain (eg: `https://example.com`).
  # Args: 
  # Returns: Types::URL!
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

