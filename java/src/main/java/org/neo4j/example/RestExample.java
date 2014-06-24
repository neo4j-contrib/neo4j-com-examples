package org.neo4j.example;
import org.neo4j.rest.graphdb.RestAPI;

import org.neo4j.rest.graphdb.RestAPIFacade;
import org.neo4j.rest.graphdb.batch.CypherResult;

import java.util.Collections;
import java.util.List;

class RestExample {

    private static final String URI = "http://localhost:7474/db/data";
    private static final String QUERY = "MATCH a-[:SELLS_TO]->b return a.name,b.name";

    public static void main(String[] args) {

        RestAPI restAPI = new RestAPIFacade(URI);
        CypherResult result = restAPI.query(QUERY, Collections.<String,Object>emptyMap());
        for (List res : result.getData()) {
            Object[] objects = res.toArray();
            System.out.println(objects[0] + " sells to " + objects[1]);
        }
  }
}
