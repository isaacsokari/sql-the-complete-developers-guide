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
- Unique index
- Multi-column index
- Partial index (not available in MySQL)

Note: Always check the docs for the DBMS to know what types of indexes they support
