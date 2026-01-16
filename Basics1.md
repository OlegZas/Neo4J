# Neo4j Setup & Basics

This document covers the **basic setup, configuration, and querying concepts** for Neo4j, intended for quick reference and onboarding.

---

## 1. Neo4j Installation

### Step 1: Download
- Download the **Neo4j Desktop** version from the official Neo4j website.

### Step 2: Install Components
During installation, ensure the following components are available:

- **Neo4j Browser**  
  Used to run Cypher queries and visually explore the graph.

- **Neo4j Bloom**  
  Used for **visual exploration and business-friendly graph views** (low/no-code).

---

## 2. Projects & Databases

### Step 3: Create or Import a Project
- Create a **new project**, or  
- Import an **existing project** if one is provided.
<img width="613" height="363" alt="image" src="https://github.com/user-attachments/assets/3913a635-2337-4f51-9717-715be42ba129" />

### Step 4: Connect to a DBMS
- Connect to an existing **DBMS**, or  
- Create a **new DBMS** inside the project.
<img width="975" height="572" alt="image" src="https://github.com/user-attachments/assets/e64cfb47-9687-4b79-9f00-b6a164a48ff5" />

#### 🔹 Dump Files
- A **dump file** is used to:
  - Migrate a database
  - Restore a database on a new server or environment (e.g., DEV → QA)

---

## 3. Neo4j Browser & System Database

### Step 5: Open Neo4j Browser
Once connected to the DBMS:
- Click **Neo4j Browser**
- This opens the interface where **Cypher queries** are submitted.

#### 🔹 System Database
- Used for:
  - Viewing **database statistics**
  - Running **administrative commands**
  - Managing users and permissions

---

## 4. Creating Entities (Nodes & Relationships)

### Step 6: Creating Entities
- Using `CREATE` will **always create new nodes**
- Running the same `CREATE` statement multiple times will result in **duplicates**
<img width="754" height="432" alt="image" src="https://github.com/user-attachments/assets/45257913-7ef5-4edb-ba1c-b0dc39248625" />

⚠️ **Best Practice**
- Use `MERGE` instead of `CREATE` to:
  - Avoid duplicates
  - Ensure idempotent operations

```cypher
MERGE (d:DPU {id: 'DPU-123'})
```
<img width="657" height="767" alt="image" src="https://github.com/user-attachments/assets/c8ad83bb-9d64-41ae-afca-a587a073e457" />

## 5. Querying the Database
### Step 7: Basic Querying
> MATCH (n)
> RETURN n
> LIMIT 50;
>
> <img width="975" height="490" alt="image" src="https://github.com/user-attachments/assets/b45048b0-b84b-4afd-b52d-8a7d303c86cc" />

## 6. Hierarchical Queries

> MATCH (d:DPU)-[:LOCATED_IN]->(b:Building)-[:SERVED_BY]->(n:OLT)
>RETURN d, b, n;
### Step 8: Query Hierarchical Data (Bottom-Up)
<img width="975" height="415" alt="image" src="https://github.com/user-attachments/assets/9793289a-89a7-4e53-897b-f357c18a2a09" />

To retrieve data starting from the **lowest level of a hierarchy**  
(e.g., **DPU → Building → Network**):

> **Cypher Example**
>
> MATCH (d:DPU)-[:LOCATED_IN]->(b:Building)-[:SERVED_BY]->(n:OLT)  
> RETURN d, b, n;

### Common Use Cases
- Impact analysis
- Service qualification
- Network dependency tracing

ℹ️ This type of query is especially useful in **telecom inventory and topology models**, where relationships between locations and network elements are critical.

---

## 7. WHERE Clause
<img width="797" height="361" alt="image" src="https://github.com/user-attachments/assets/e56e14bc-1446-4c00-89af-217f80ba30c3" />

### Step 9: Filtering with `WHERE`

The `WHERE` clause is used to **filter query results** based on specific conditions.

> **Cypher Example**
>
> MATCH (d:DPU)  
> WHERE d.serviceable = true  
> RETURN d;

### Common Filtering Scenarios
- Filter by status
- Filter by IDs
- Filter by property values

