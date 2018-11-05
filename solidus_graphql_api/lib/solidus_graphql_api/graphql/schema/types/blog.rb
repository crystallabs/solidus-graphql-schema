class Spree::GraphQL::Schema::Types::Blog < Spree::GraphQL::Schema::Types::BaseObject
  graphql_name 'Blog'
  description nil
  implements ::Spree::GraphQL::Schema::Interfaces::Node
  include ::Spree::GraphQL::Types::Blog
  field :article_by_handle, ::Spree::GraphQL::Schema::Types::Article, null: true do
    description %q{Find an article by its handle.}
    argument :handle, ::GraphQL::Types::String, required: true, description: %q{The handle of the article.}
  end
  field :articles, ::Spree::GraphQL::Schema::Types::Article, null: false do
    description %q{List of the blog's articles.}
    argument :first, ::GraphQL::Types::Int, required: false, description: %q{Returns up to the first `n` elements from the list.}
    argument :after, ::GraphQL::Types::String, required: false, description: %q{Returns the elements that come after the specified cursor.}
    argument :last, ::GraphQL::Types::Int, required: false, description: %q{Returns up to the last `n` elements from the list.}
    argument :before, ::GraphQL::Types::String, required: false, description: %q{Returns the elements that come before the specified cursor.}
    argument :reverse, ::GraphQL::Types::Boolean, required: false, default_value: false, description: %q{Reverse the order of the underlying list.}
  end
  field :authors, [::Spree::GraphQL::Schema::Types::ArticleAuthor], null: false do
    description %q{The authors who have contributed to the blog.}
  end
  field :handle, ::GraphQL::Types::String, null: false do
    description %q{A human-friendly unique string for the Blog automatically generated from its title.
}
  end
  field :id, ::GraphQL::Types::ID, null: false do
    description %q{Globally unique identifier.}
  end
  field :title, ::GraphQL::Types::String, null: false do
    description %q{The blogs’s title.}
  end
  field :url, ::Spree::GraphQL::Schema::Types::URL, null: false do
    description %q{The url pointing to the blog accessible from the web.}
  end
end