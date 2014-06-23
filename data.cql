CREATE (babylon:Company {name: 'Hotel Babylon'})-[:SELLS_TO]->(northwind:Company {name: 'Northwind Traders'});
CREATE (oceanic:Company {name: 'Oceanic Airlines'})-[:SELLS_TO]->(initech:Company {name: 'Initech'});
CREATE (omni:Company {name: 'Omni Consumer Products'})-[:SELLS_TO]->(dunder:Company {name: 'Dunder Mifflin'});
CREATE (goblin:Company {name: 'Golden Goblin Press'})-[:SELLS_TO]->(yoyodyne:Company {name: 'Yoyodyne'});
CREATE (dewey:Company {name: 'Dewey, Cheatem & Howe'})-[:SELLS_TO]->(initrode:Company {name: 'Initrode'});
