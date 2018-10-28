module Spree::GraphQL::Types::CommentAuthor


  # Field: email: The author's email.
  # Returns: ::GraphQL::Types::String, null: false
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: name: The author’s name.
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

