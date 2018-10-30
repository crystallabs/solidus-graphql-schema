module Spree::GraphQL::Types::CommentAuthor
  # @graphql email The author's email.
  # @return [Types::String!]
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql name The author’s name.
  # @return [Types::String!]
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

