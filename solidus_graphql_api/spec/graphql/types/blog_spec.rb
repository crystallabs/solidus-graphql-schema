# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Blog' do
    let!(:blog) { create(:blog) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # articleByHandle: Find an article by its handle.
    # @param handle [Types::String!]
    # @return [Types::Article]
    describe 'articleByHandle' do
      let!(:query) {
        %q{
          query {
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
                blog {
                  articleByHandle(handle: "")
                  articles(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false
                  )
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
    # articles: List of the blog's articles.
    # @param first [Types::Int]
    # @param after [Types::String]
    # @param last [Types::Int]
    # @param before [Types::String]
    # @param reverse [Types::Boolean] (false)
    # @return [Types::Article!]
    describe 'articles' do
      let!(:query) {
        %q{
          query {
            blog {
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
                blog {
                  articleByHandle(handle: "")
                  articles(
                    first: Int,
                    after: "",
                    last: Int,
                    before: "",
                    reverse: false
                  )
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
    # authors: The authors who have contributed to the blog.
    # @return [[Types::ArticleAuthor!]!]
    describe 'authors' do
      let!(:query) {
        %q{
          query {
            blog {
              authors {
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
    # handle: A human-friendly unique string for the Blog automatically generated from its title.
    # @return [Types::String!]
    describe 'handle' do
      let!(:query) {
        %q{
          query {
            blog {
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
            blog {
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
    # title: The blogs’s title.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) {
        %q{
          query {
            blog {
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
    # url: The url pointing to the blog accessible from the web.
    # @return [Types::URL!]
    describe 'url' do
      let!(:query) {
        %q{
          query {
            blog {
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