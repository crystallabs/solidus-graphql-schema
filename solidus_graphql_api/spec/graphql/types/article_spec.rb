# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Article' do
    let!(:article) { create(:article) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # authorV2: The article's author.
    # @return [Types::ArticleAuthor]
    describe 'authorV2' do
      let!(:query) {
        %q{
          query {
            article {
              authorV2 {
                bio
                email
                firstName
                lastName
                name
              }
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # blog: The blog that the article belongs to.
    # @return [Types::Blog!]
    describe 'blog' do
      let!(:query) {
        %q{
          query {
            article {
              blog {
                articleByHandle(handle: "") {
                  author {
                    bio
                    email
                    firstName
                    lastName
                    name
                  }
                  authorV2 {
                    bio
                    email
                    firstName
                    lastName
                    name
                  }
                  blog
                  comments(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false
                  ) {
                    author {
                      email
                      name
                    }
                    content(truncateAt: Int)
                    contentHtml
                    id
                  }
                  content(truncateAt: Int)
                  contentHtml
                  excerpt(truncateAt: Int)
                  excerptHtml
                  handle
                  id
                  image(
                    maxWidth: Int,
                    maxHeight: Int,
                    crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                    scale: Int
                  ) {
                    altText
                    id
                    originalSrc
                    src
                    transformedSrc(
                      maxWidth: Int,
                      maxHeight: Int,
                      crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                      scale: Int,
                      preferredContentType: "PNG | JPG | WEBP"
                    )
                  }
                  publishedAt
                  tags
                  title
                  url
                }
                articles(
                  first: Int,
                  after: "",
                  last: Int,
                  before: "",
                  reverse: false
                ) {
                  author {
                    bio
                    email
                    firstName
                    lastName
                    name
                  }
                  authorV2 {
                    bio
                    email
                    firstName
                    lastName
                    name
                  }
                  blog
                  comments(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false
                  ) {
                    author {
                      email
                      name
                    }
                    content(truncateAt: Int)
                    contentHtml
                    id
                  }
                  content(truncateAt: Int)
                  contentHtml
                  excerpt(truncateAt: Int)
                  excerptHtml
                  handle
                  id
                  image(
                    maxWidth: Int,
                    maxHeight: Int,
                    crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                    scale: Int
                  ) {
                    altText
                    id
                    originalSrc
                    src
                    transformedSrc(
                      maxWidth: Int,
                      maxHeight: Int,
                      crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                      scale: Int,
                      preferredContentType: "PNG | JPG | WEBP"
                    )
                  }
                  publishedAt
                  tags
                  title
                  url
                }
                authors {
                  bio
                  email
                  firstName
                  lastName
                  name
                }
                handle
                id
                title
                url
              }
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # comments: List of comments posted on the article.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @return [Types::Comment!]
    describe 'comments' do
      let!(:query) {
        %q{
          query {
            article {
              comments(
                first: Int,
                after: "",
                last: Int,
                before: "",
                reverse: false
              ) {
                author {
                  email
                  name
                }
                content(truncateAt: Int)
                contentHtml
                id
              }
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # content: Stripped content of the article, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    describe 'content' do
      let!(:query) {
        %q{
          query {
            article {
              content(truncateAt: Int)
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # contentHtml: The content of the article, complete with HTML formatting.
    # @return [Types::HTML!]
    describe 'contentHtml' do
      let!(:query) {
        %q{
          query {
            article {
              contentHtml
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # excerpt: Stripped excerpt of the article, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String]
    describe 'excerpt' do
      let!(:query) {
        %q{
          query {
            article {
              excerpt(truncateAt: Int)
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # excerptHtml: The excerpt of the article, complete with HTML formatting.
    # @return [Types::HTML]
    describe 'excerptHtml' do
      let!(:query) {
        %q{
          query {
            article {
              excerptHtml
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # handle: A human-friendly unique string for the Article automatically generated from its title.
    # @return [Types::String!]
    describe 'handle' do
      let!(:query) {
        %q{
          query {
            article {
              handle
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) {
        %q{
          query {
            article {
              id
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # image: The image associated with the article.
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @return [Types::Image]
    describe 'image' do
      let!(:query) {
        %q{
          query {
            article {
              image(
                maxWidth: Int,
                maxHeight: Int,
                crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                scale: Int
              ) {
                altText
                id
                originalSrc
                src
                transformedSrc(
                  maxWidth: Int,
                  maxHeight: Int,
                  crop: "CENTER | TOP | BOTTOM | LEFT | RIGHT",
                  scale: Int,
                  preferredContentType: "PNG | JPG | WEBP"
                )
              }
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # publishedAt: The date and time when the article was published.
    # @return [Types::DateTime!]
    describe 'publishedAt' do
      let!(:query) {
        %q{
          query {
            article {
              publishedAt
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # tags: A categorization that a article can be tagged with.
    # @return [[Types::String!]!]
    describe 'tags' do
      let!(:query) {
        %q{
          query {
            article {
              tags
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # title: The article’s name.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) {
        %q{
          query {
            article {
              title
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # url: The url pointing to the article accessible from the web.
    # @return [Types::URL!]
    describe 'url' do
      let!(:query) {
        %q{
          query {
            article {
              url
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
  end
end