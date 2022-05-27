# Transactions Notes

Transactions enable us to bundle different statements to ensure that they are all executed or not.
Either every statement is successful, or we roll back

To start a transaction in MySQL,

```sql
START TRANSACTION;
```

and in postgres

```sql
BEGIN TRANSACTION;
```

The changes are stored in memory, but persist to the database only if all of them pass.

To save the changes, and terminate the transaction session in both, use

```sql
COMMIT;
```

and to restore the database to it's state before the transaction and terminate the transaction session, use

```sql
ROLLBACK;
```

Note:

- if you begin a transaction while another transaction is still open, an `implicit commit` will be created, e.g.

  - statements that implicitly use or modify tables in the `mysql` database e.g. `ALTER USER`, `CREATE USER`, `DROP USER`, `GRANT`, `RENAME USER`, `REVOKE`, `SET PASSWORD` e.t.c.
  - Transaction control and locking statements e.g. `BEGIN TRANSACTION`, `LOCK TABLES`, `SET autocommit = 1`(if value isn't already 1), `START TRANSACTION`, `UNLOCK TABLES`.

- if the database's
