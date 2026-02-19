# Graph Database Querying with Cypher

This document outlines essential Cypher patterns for navigating nodes and relationships in a graph database.

---

## 1. Show All Relationships
Retrieve every relationship currently existing in the graph to understand the network structure.

> MATCH ()-[r]->() 
> RETURN r

---

##  2. Show Properties of Nodes
Return a specific node along with its associated key-value pairs (properties).

> MATCH (n) 
> RETURN n

---

## 3. Get Specific Node (WHERE Filter)
Filter for a specific node by evaluating its properties using the `WHERE` clause.

> MATCH (p:Person)
> WHERE p.name = "John Doe"
> RETURN p

---

##  4. Filter Without WHERE Clause
You can achieve the same filtering result by embedding the property directly within the node brackets.

> MATCH (n:Address {addressId: "22201602"})
> RETURN n LIMIT 1

---

##  5. Filtering with CONTAINS and NOT
Perform partial string matching or exclude specific results from your dataset.

> MATCH (n:Officer)
> WHERE n.name CONTAINS "SMITH" AND NOT n.status = "Inactive"
> RETURN n

---

## 6. SKIP and LIMIT Results
Manage large result sets by skipping a specific number of records or limiting the total output.

> MATCH (p:Player)
> RETURN p
> SKIP 10
> LIMIT 5

---

## 7. Searching Multiple Node Types
Query multiple labels and relationships simultaneously to find complex patterns.

> MATCH (a:Entity)-[r]->(b:Intermediary)
> RETURN a, r, b

---

## 8. Querying for Relationships
Explicitly define the direction and type of a relationship using the arrow syntax.

> MATCH (n:Person)-[:WORKS_AT]->(c:Company)
> RETURN n, c

---
