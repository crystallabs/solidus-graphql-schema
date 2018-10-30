module Spree::GraphQL::Types::Comment
  include ::Spree::GraphQL::Interfaces::Node
  # @graphql author The comment’s author.
  # @return [Types::CommentAuthor!]
  def author()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql content Stripped content of the comment, single line with HTML tags removed.
  # @param truncate_at [Types::Int] Truncates string after the given length.
  # @return [Types::String!]
  def content(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql contentHtml The content of the comment, complete with HTML formatting.
  # @return [Types::HTML!]
  def content_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql id Globally unique identifier.
  # @return [Types::ID!]
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end
