module Spree::GraphQL::Types::PageInfo


  # Field: hasNextPage: Indicates if there are more pages to fetch.
  # Args: 
  # Returns: Types::Boolean!
  def has_next_page()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: hasPreviousPage: Indicates if there are any pages prior to the current page.
  # Args: 
  # Returns: Types::Boolean!
  def has_previous_page()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

