import os
from py2neo import neo4j, cypher
graph_db = neo4j.GraphDatabaseService('http://localhost:7474/db/data')
query = 'MATCH a-[:SELLS_TO]->b return a.name,b.name'
data, metadata = cypher.execute(graph_db, query)
for pair in data:
    print("%s sells to %s" % (pair[0], pair[1]))
