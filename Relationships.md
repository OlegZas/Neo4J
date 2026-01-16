## 1. Creating a Relationship
<img width="697" height="423" alt="image" src="https://github.com/user-attachments/assets/1c64ed03-89ab-4424-8471-c68706703af5" />
<img width="975" height="414" alt="image" src="https://github.com/user-attachments/assets/1a56ceea-5a78-40e4-a6d6-ca4e2ac7356e" />

Use the **`CREATE`** or **`MERGE`** clause to establish a relationship between two nodes.

- **`CREATE`** → Always creates a new relationship  
- **`MERGE`** → Creates the relationship only if it does not already exist

> **Tip:** Use `MERGE` to avoid duplicate relationships.

---

## 2. Updating a Node Property

### a. Find the node(s) and use the `SET` clause

To update a property on a node:

1. **Match** the node(s) you want to update  
2. Use the **`SET`** clause to modify or add properties

> **Important:**  
> - `SET` will overwrite existing values  
> - You can update multiple properties at once
<img width="676" height="368" alt="image" src="https://github.com/user-attachments/assets/6ea6629d-6483-4db1-834a-4430cf3fe4b0" />

---

## 3. Checking for an Existing Relationship

To verify whether a relationship already exists between nodes:

- Use the **`MATCH`** clause with the relationship type
- Optionally use **`OPTIONAL MATCH`** if the relationship may not exist

> **Best practice:**  
> Check for existing relationships before creating new on
<img width="975" height="416" alt="image" src="https://github.com/user-attachments/assets/2e213bc8-0699-488e-a9fd-5d2a48e3ba46" />
