# Solidus GraphQL Schema Generator

This repository provides scripts used to generate (and periodically update) GraphQL files in Solidus extension [solidus_graphql_api](https://github.com/boomerdigital/solidus_graphql_api).

If you are interested in using the Solidus GraphQL API, please use the mentioned extension - [solidus_graphql_api](https://github.com/boomerdigital/solidus_graphql_api).

If you are interested in developing the Solidus GraphQL API, this repository is of relevance to you.

## Introduction

Solidus GraphQL API schema is kept in sync with Shopify for the most part. To avoid the inconvenience of periodically having to manually check and update schema, this repository contains tools to check upstream schema and make any updates automatically.

In solidus_graphql_api, the GraphQL files live in the directory `lib/solidus_graphql_api/graphql/`. That directory is further divided into two parts:

1. The schema part, i.e. the files kept in the subdirectory `schema/`
1. The implementation part, i.e. all other files outside of the subdirectory `schema/`

The file `lib/solidus_graphql_api/graphql/all.rb` lists all those files and `require`s them in the correct order.

### The Schema

Files in the subdirectory `schema/` are intended to be maintained by the generator script and contain no user implementation code. They are rewritten on every invocation of the generator.

In GraphQL, almost everything is a Type. This is excellent for the simplification of all the tooling and logic needed around it, but is not very elegant when hundreds of files live all in the same directory, especially when whole groups of Types are used in different contexts and are not directly related to each other.

Therefore, Solidus GraphQL API splits all types into the main distinctive groups they belong to:

1. Inputs - Input Object types mainly used when invoking mutations. They are kept in the subdirectory `inputs/` and prefixed with `Inputs::` in class names.
1. Payloads - Response object types mainly used for receiving responses from mutations. They are kept in the subdirectory `payloads/` and prefixed with `Payloads::` in class names.
1. Interfaces - Non-instantiable types which other types may implement. They are kept in the subdirectory `interfaces/` and prefixed with `Interfaces::` in module names. 
1. Types - All other types. They are kept in the subdirectory `types/` and prefixed with `Types::` in class names.

An example would be `::Spree::GraphQL::Schema::Types::Shop` or `::Spree::GraphQL::Schema::Inputs::CreditCardPayment`.

Please note that because the GraphQL schema namespace is flat, and also to preserve compatibility with the upstream schema and type names, in GraphQL queries all these types are known by their original names, such as `Shop` and `CreditCardPaymentInput`.

### The Implementation

Since the schema files are managed by the generator script, actual Solidus GraphQL API method implementations which are inserted and maintained manually cannot be placed there.

Every Solidus schema file expects its corresponding implementation file placed in the same directory structure and using the same class/module name, just with the `schema/` and `Schema::` prefixes removed.

For example, GraphQL type `Schema::Types::Shop` expects to find its implementation methods in the module `Types::Shop` and automatically includes that module in its class.

When the schema generator is run, it also generates the stub implementation files if they don't yet exist. These files are generated with ready-made templates for all defined GraphQL fields, including mentioning their description, arguments, and expected return value in the comments above the method definitions.

All auto-generated method stubs contain one default line of code which raises error `::Spree::GraphQL::NotImplementedError`.

To implement a particular GraphQL field, one can use all approaches mentioned in [graphql-ruby Fields Guides](http://graphql-ruby.org/guides#fields-guides), but most often this will come down to one of two choices:

1. Remove the NotImplemented error for a particular call and replace it with the actual implementation. In this case, as per graphql-ruby, the underlying object is automatically available in helper variable `object`, context in `context`, and arguments are accessed directly as arguments passed to the method.
1. Comment or remove the whole method definition and allow the underlying object to respond to the call directly. For example, in a GraphQL query `{ shop { name } }`, after the query root object resolves `shop` to an instance of `Schema::Types::Shop` (and in turn an instance of `::Spree:Store`), then `name` can either be implemented as `def name() object.name end`, or it can be left out so that the method `name` gets called on `::Spree::Store` directly.

## Generating or Updating Schema

To generate GraphQL schema files or to update them from upstream, you would use the following general procedure:

1. Clone this repository
1. Open Shopify GraphiQL at https://help.shopify.com/en/api/graphiql
1. Paste the contents of file `introspection_query.txt` into the opened GraphiQL
1. Save the displayed JSON content to file `schema.json`
1. Git clone or update module `graphql-ruby` from https://github.com/rmosolgo/graphql-ruby
1. Run `./generate-schema.rb schema.json graphql-ruby`
1. Compare contents of solidus_graphql_api's directory `lib/solidus_graphql_api/graphql/` with `./graphql/`
1. Copy and commit desired changes in contents from `./graphql/` into solidus_graphql_api
1. If new files were created, add them to solidus_graphql_api's file `lib/solidus_graphql_api/graphql/all.rb`

Please note that the generator will, by default, output all files to subdirectory `./graphql/`. You can compare existing solidus_graphql_api files with it (that's item (7) in the above list) in generally one of two ways:

1. Compare the two directories with a command like `diff -ruNP /path/to/solidus_graphql_api/lib/solidus_graphql_api/graphql/ ./graphql/`. This approach is good for a quick check, but you will still need to copy over the files or changes you intend to keep and commit to solidus_graphql_api.
1. Make `graphql` be a symlink to `/path/to/solidus_graphql_api/lib/solidus_graphql_api/graphql/`. This approach will effectively generate the files directly in solidus_graphql_api source tree and you can check for any changes by going to that directory and running `git diff`/`git status`.

Once the schema files are updated, the implementation files, the test files, and the file `all.rb` may need to be updated manually, and then the whole set of changes should be committed to solidus_graphql_api.

## Testing

After running the generator, you should be able to syntax-check the generated files by simply running `ruby graphql/all.rb`. There should be no output or error displayed.

## Troubleshooting

For troubleshooting, use the following guidelines:

1. Open `generate-schema.rb` and change log level from WARN to DEBUG
1. To access or print schema from Rails console in a Solidus app, run `rails c`, then see `Spree::GraphQL::Schema::Schema.to_graphql`
1. To compare schemas, the best way is to run the introspection query against both Shopify and Solidus server, then compare the returned JSONs
1. To filter out insignificant differences in schemas before comparison, and to output each differing type as files on disk, first run the introspection query, then place the upstream result to `schema.json` and Solidus result to `solidus-schema.json` and run `./compare-schemas.rb  schema.json  solidus-schema.json`. The differences will be placed to directory `diffs/`.

## Known Differences

The schema is generated automatically and so depends on the specifics of the generator and current version of `graphql-ruby`.

Currently, the smaller points of difference between Shopify and Solidus GraphQL schema are:

1. Solidus uses newer versions of `graphql-ruby` which may include more verbose field and argument descriptions, and more data in the `pageInfo` type.
1. GraphQL field `Shop.productTypes` in Shopify only supports argument `first`, while in Solidus it is a regular Connection with four default arguments (`first`, `last`, `before`, `after`).

Possibly more significant differences:

1. GraphQL types `Order`, `Checkout`, and `DiscountAllocation` in Solidus do not include the fields related to type `DiscountApplication`. This will be fixed.
1. In Solidus, all Connection types can return nil whereas in Shopify they are explicitly not nil. The nil comes from default graphql-ruby behavior, and this may be kept as it is, unless more detailed reasons for making it not nil come to attention.

## TODO

1. Some types contain lists of accepted values, such as `Schema::Types::CountryCode`. These types and names are currently converted from original schema into Solidus schema as fixed strings. Instead, they should be populated dynamically from Solidus' own country list.
1. The generator script currently simply discards all deprecated parts of schema and they are not created in Solidus. If/when supporting deprecated elements becomes important, the generator will have to be modified to not skip deprecated elements, but to output them while honoring their `isDeprecated` status.
1. In some places, first/last/before/after/pageInfo may still appear mentioned literally. If so, the generator should be updated to avoid outputting these since they are handled automatically by Connection types.
1. Determine why `Order`, `Checkout`, and `DiscountAllocation` do not include the field related to discount applications, and consequently the `DiscountApplication` interface.
1. See whether it is possible to make `Shop.productTypes` connection only support argument `first` (like in the upstream API) rather than all four arguments (`first`, `last`, `before`, `after`)
