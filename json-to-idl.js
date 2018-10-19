var fs = require('fs');
var sfj = require('graphql-schema-from-json');
var gql = require('graphql');

const data = fs.readFileSync('schema.json', {encoding: 'utf-8'});
// Get the schema as a JSON object
const schema = sfj.getSchemaFromData(data);

// Print the GQL for this schema
console.log(gql.printSchema(schema));
