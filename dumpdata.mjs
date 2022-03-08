import * as edgedb from "edgedb";
import e from "./dbschema/edgeql-js";

const client = edgedb.createClient();

async function run(){
  // declare a simple query
  const myQuery = e.str("Hello world!");

  // execute the expression
  const result = await myQuery.run(client);

  // print the result
  console.log(result); // "Hello world!"
}

run()