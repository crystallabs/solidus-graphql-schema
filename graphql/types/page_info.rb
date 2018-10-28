module Spree::GraphQL::Types::PageInfo


  # Indicates if there are more pages to fetch.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def has_next_page()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Indicates if there are any pages prior to the current page.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def has_previous_page()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Information about pagination in a connection.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def page_info()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

