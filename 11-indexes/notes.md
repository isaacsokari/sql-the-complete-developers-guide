# Indexes

This is a feature provided by a Database Management System that speeds up queries by putting some data in memory.

It creates a highly optimized and sorted copy of the values for some specific query.

## Warning: Don't use too many indexes as that'll lead to unnecessarily slower write queries.

When an indexed table is updated, it's corresponding index list (1 index has 1 index list) must be updated. So a table that has multiple indexes, you'll have multiple index list writes when the table is updated.

## Index Types

### By technical implementation,

They use different algorithms and support different comparison operations efficiently.

- B-Tree (default)
- Hash
- GiST e.t.c.

### Here are the different types of indexes by functionality

These are used for different purposes and data values

- Standard single-column index
  Our usual values
- Unique index
  Ensures unique values in an index
- Multi-column index
- Partial index (not available in MySQL)

Note: Always check the docs for the DBMS to know what types of indexes they support

## Creating Indexes

- Single-Column index
  You can create a single column index as shown below

  ```sql
  CREATE INDEX <index_name> ON <table_name> (<column_name>);
  ```

- Unique Index

  You can create a unique single column index as shown below

  ```sql
  CREATE UNIQUE INDEX <index_name> ON <table_name> (<column_name>);
  ```

  Note: This is also autocreated by adding the UNIQUE constraint to a table at creation or using ALTER

- Multi-Column (Composite) Index
  This index spans multiple columns

  ```sql
  CREATE INDEX <index_name> ON <table_name> (<column1_name>, <column2_name>, <column3_name>);
  ```

  Note:

  - A query that uses a single column might still use the index (in some cases) because the composite index is optimized for the combination of the tables using the AND keyword.

    OR isn't optimized as it's the same as searching 2 different tables

    Parts of the column list can be used from LEFT TO RIGHT

  - The order of the columns in the `CREATE INDEX` statement matters

- Partial Indexes (not in MySQL)

  Can be created using

  ```sql
    CREATE INDEX <index_name> ON <table_name> (<column_name>)
    WHERE <condition>;
  ```

## Dropping Indexes

You can drop and index using `DROP INDEX` as shown below

```sql
  DROP INDEX <index_name>;
```
