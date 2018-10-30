module Spree::GraphQL::Types::PageInfo
  # @graphql hasNextPage Indicates if there are more pages to fetch.
  # @return [Types::Boolean!]
  def has_next_page()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql hasPreviousPage Indicates if there are any pages prior to the current page.
  # @return [Types::Boolean!]
  def has_previous_page()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end
