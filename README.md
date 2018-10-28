Shopify -> Solidus GraphQL Schema Verifier

Table of Contents:

1) Verifying schema up-to-dateness
2) Converting JSON schema to IDL format
3) Misc

-----------------------------------------------

1) Verifying schema up-to-dateness

Daniel Honig of Boomer Digital suggested that we model Solidus' GraphQL
schema as closely to Shopify as possible.

This is worth an attempt, but to be sure that the effort is not a one-time
action, we need a set of tools that can download and compare the schemas
between two systems at any point in time.

Currently it works like this:

1) Open Shopify GraphiQL at https://help.shopify.com/en/api/graphiql
2) Paste the contents of 'introspection.query' into GraphiQL
3) When it shows results, copy all content and save to file schema.json
4) Go to base directory of solidus_graphql_api extension
5) Run /path/to/check-schema.


2) Converting JSON schema to IDL format

After JSON schema is placed to schema.json, install:
https://github.com/marmelab/graphql-schema-from-json

Then run 'node json-to-idl.js' and it will print IDL.

NOTE: I couldn't get the program to run under Node.


3) Misc

Possibly alternative way to convert JSON to IDL would be:
https://github.com/gabrielf/graphql-schema-from-introspection
