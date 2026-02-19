# Graph Database Querying with Cypher

This document outlines essential Cypher patterns for navigating nodes and relationships in a graph database.

---

## 1. Show All Relationships
Retrieve every relationship currently existing in the graph to understand the network structure.

> MATCH ()-[r]->() 
> RETURN r
<img width="829" height="492" alt="image" src="https://github.com/user-attachments/assets/841ea2fb-ee46-4893-bced-97a5aba4d78f" />

---

##  2. Show Properties of Nodes
Return a specific node along with its associated key-value pairs (properties).

> MATCH (n) 
> RETURN n
<img width="975" height="447" alt="image" src="https://github.com/user-attachments/assets/bb53f75e-636a-4198-b5e3-50b4601a8354" />

---

## 3. Get Specific Node (WHERE Filter)
Filter for a specific node by evaluating its properties using the `WHERE` clause.

> MATCH (p:Person)
> WHERE p.name = "John Doe"
> RETURN p
<img width="975" height="551" alt="image" src="https://github.com/user-attachments/assets/335f38e3-cc0d-4c55-98ec-56e129537d47" />

---

##  4. Filter Without WHERE Clause
You can achieve the same filtering result by embedding the property directly within the node brackets.

> MATCH (n:Address {addressId: "22201602"})
> RETURN n LIMIT 1
<img width="975" height="559" alt="image" src="https://github.com/user-attachments/assets/619be740-f28c-4e12-9dc5-465f7cae4cce" />

---

##  5. Filtering with CONTAINS and NOT
Perform partial string matching or exclude specific results from your dataset.

> MATCH (n:Officer)
> WHERE n.name CONTAINS "SMITH" AND NOT n.status = "Inactive"
> RETURN n
<img width="975" height="483" alt="image" src="https://github.com/user-attachments/assets/2a2755b6-2099-4754-bdcf-489698c36341" />

---

## 6. SKIP and LIMIT Results
Manage large result sets by skipping a specific number of records or limiting the total output.

> MATCH (p:Player)
> RETURN p
> SKIP 10
> LIMIT 5
<img width="975" height="510" alt="image" src="https://github.com/user-attachments/assets/9804f8ff-f813-4258-8712-6b85ad5bab36" />

---

## 7. Searching Multiple Node Types
Query multiple labels and relationships simultaneously to find complex patterns.

> MATCH (a:Entity)-[r]->(b:Intermediary)
> RETURN a, r, b
<img width="975" height="411" alt="image" src="https://github.com/user-attachments/assets/8cb8c572-357b-4012-abda-f9644473d2da" />

---

## 8. Querying for Relationships
Explicitly define the direction and type of a relationship using the arrow syntax.

> MATCH (n:Person)-[:WORKS_AT]->(c:Company)
> RETURN n, c
<img width="975" height="436" alt="image" src="https://github.com/user-attachments/assets/26afcbae-7214-4e26-b98a-174c62601807" />

---
