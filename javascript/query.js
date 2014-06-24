var neo4j = require('neo4j');
var db = new neo4j.GraphDatabase('http://localhost:7474');

db.query("MATCH a-[:SELLS_TO]->b return a.name as seller,b.name as buyer", {}, function (err, results) {
  if (err) throw err;
  results.forEach(function (item) {
    console.log(item.seller + ' sells to ' + item.buyer);
  })
});
