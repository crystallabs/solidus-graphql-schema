module Spree::GraphQL::Types::CollectionSortKeys


  # The set of valid sort keys for the collections query.
  # Returns: 
  def collection_sort_keys()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

