# On Primary Keys and Foreign Keys

## Primary Keys: When To Use Which Column

- It's always safe to use an **auto-incrementing id** column so it's the default fallback here
- consider another column if it's a **real identification criteria** of the table's records
  e.g. users can be **uniquely** identified by their email addresses, so it's a suitable **PRIMARY KEY**
- you might decide to use an **artificial primary key** _a.k.a. surrogate key_ for the various reasons

  - Maybe despite being identified uniquely via email addresses, you want to also have unique IDs for users (e.g. so that you have a simpler and shorter unique value per user)

  - Some potential "real keys" might take up lots of memory and could therefore even slow down queries => Auto-incrementing ids might be more efficient to use for frequent queries (especially when also working with lots of complex relationships)

  - Some columns might look unique at first - but aren't if you think about them again (e.g. the "street" of an address might be unique - but only per city; the same street could be part of multiple cities or even countries)

Ultimately, it will always come down to a variety of factors: The exact use-case you have, experience, personal preferences etc. You should be open to look for "real keys" instead of always automatically using auto-incrementing IDs but you probably also shouldn't force it.

## Composite Primary Keys

You must only have one primary key per table but primary keys can span multiple columns, these are called composite primary keys.

Composite Primary Keys are defined as shown below

```sql
CREATE TABLE projects_employees (
  employee_id INT NOT NULL,
  project_id INT NOT NULL,
  PRIMARY KEY (employee_id, project_id) -- Composite Primary Key
)
```

Note:

- Sometimes, composite primary keys with many columns can be bad for performance, in that case, it's better to use a `Surrogate Key` which can be our default auto-incrementing id.

- Intermediate tables are a good use case for Composit Primary Keys

### Using Composite Primary Keys as references

This can be done as shown below (while referencing the previous example)

```sql
CREATE TABLE example_table (
  id INT PRIMARY KEY AUTO_INCREMENT,
  -- as usual, the PK's column name can be excluded
  -- FOREIGN KEY (employee_id) REFERENCES projects_employees
  -- FOREIGN KEY (employee_id, project_id) REFERENCES projects_employees
  FOREIGN KEY (employee_id, project_id) REFERENCES projects_employees ()
)
```

### Random

Quick questions,

- can the primary key be changed to another column or to a composite PK on a table after creation? i.e. using ALTER TABLE???
- What's the practical difference between column constraints and table constraints?
