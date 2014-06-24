<?php
require('vendor/autoload.php');

$client = new Everyman\Neo4j\Client('localhost', 7474);
$queryString = "MATCH a-[:SELLS_TO]->b return a.name as seller,b.name as buyer";
$query = new Everyman\Neo4j\Cypher\Query($client, $queryString);
$lines = $query->getResultSet();
foreach ($lines as $line) {
  printf("%s sold stuff to %s\n", $line[0], $line[1]);
}
