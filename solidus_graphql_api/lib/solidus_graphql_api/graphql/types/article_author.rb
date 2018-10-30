module Spree::GraphQL::Types::ArticleAuthor
  # @graphql bio The author's bio.
  # @return [Types::String]
  def bio()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql email The author’s email.
  # @return [Types::String!]
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql firstName The author's first name.
  # @return [Types::String!]
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql lastName The author's last name.
  # @return [Types::String!]
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql name The author's full name.
  # @return [Types::String!]
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end
