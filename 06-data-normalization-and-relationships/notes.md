# Notes

## Data Normalization

This is done to prevent Update, Deletion and Insertion anomalies

## UNION vs JOIN

1. `UNION` clause combines multiple result sets into one result set by appending ROWS
   JOIN clause merges multiple tables into one result set by appending COLUMNS

2. `UNION` clause combines similar result sets i.e. result sets with the same number of columns returned by appending the rows.

## Foreign Key Constraints

```sql
CREATE TABLE users (
   ...
   address_id INT REFERENCES addresses (id) ON DELETE CASCADE
   ...
);
```

The above means the `address_id` is a reference of an `id` field in the `addresses` table

`ON DELETE` and `ON UPDATE` define the actions to be executed if the related row is deleted or updated;

For this example, if the address row is deleted, the corresponding user row is deleted as well

### `ON DELETE` and `ON UPDATE` actions

- `RESTRICT` and `NO ACTION` they both prevent the intended action
  e.g. deleting a row won't work

  P.S: `NO ACTION`'s check can be deferred (e.g. as part of a transaction)

- `CASCADE` perform the same action
- `SET NULL` set the foreign key value to null
- `SET DEFAULT` set the foreign key value to the default value

### Adding Foreign Key Constraints Via ALTER TABLE

MySQL & Postgresql

```sql
ALTER TABLE <table_name>
ADD FOREIGN KEY <column_name> REFERENCES <related_table> (<related_column>) ON DELETE ... ON UPDATE...
```

### Removing Foreign Key Constraints Via ALTER TABLE

MySQL & Postgresql

```sql
ALTER TABLE <table_name>
DROP FOREIGN KEY <constraint_name>;
```

In order to DROP a foreign key constraint (just as for dropping any other kind of constraint), you need to assign a name to the constraint when adding it.

This can be done like this:

### Adding with constraint name via CREATE TABLE:

For Postgres

```sql
CREATE TABLE <table_name> (
  <column_name> <column_data_type> FOREIGN KEY <constraint_name> REFERENCES ...
);
```

For MySQL

```sql
CREATE TABLE <table_name> (
  <column_name> <column_data_type>,
   FOREIGN KEY <column_name> REFERENCES ( <other_table> ) (other_column) ON DELETE ...
);
```

The FOREIGN KEY part (i.e. FOREIGN KEY <constraint_name>) is only required if a name should be assigned. If you don't need a name (because you don't plan on dropping the constraint at any time), you can omit FOREIGN KEY.

### Adding with constraint name via ALTER TABLE:

```sql
ALTER TABLE <table_name>
ADD CONSTRAINT <constraint_name> FOREIGN KEY <column_name> REFERENCES ... (see above)
```
