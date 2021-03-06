# Grouping and Aggregate Functions

## Aggregate Functions

These are functions used to carry out operations on data set that return a single result.
Core aggregat functions include

- **COUNT(\*) or COUNT(column_name)**

  This returns the number of rows that aren't null

- **SUM(column_name)**

  This returns the sum of all non-null values in a specific column

- **MAX(column_name) and MIN(column_name)**

  These return the max or min value from a specific column

  Note:

  - \* can't work with MAX and MIN when the columns have different data types
  - MAX and MIN also work with letters, dates, e.t.c just like ORDER BY

- **AVERAGE(column_name)**

  This calculates the average value in a specific column

  Note: \* can't work with MAX and MIN when the columns have different data types

Note: More Aggregate functions can be found in the docs

- [MySQL 8.0 Aggregate Functions](https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html)
- [14 Aggregate Functions](https://www.postgresql.org/docs/14/functions-aggregate.html)

## Grouping

`GROUP BY` is used to group data when aggregated and non-aggregated data are queried, so we can carry out aggregate functions.

e.g.

```sql
  -- this should fail as the booking_date isn't an aggregated column
  SELECT booking_date, SUM(num_guests)
  FROM bookings;

  -- this works by grouping similar booking dates
  SELECT booking_date, SUM(num_guests)
  FROM bookings
  GROUP BY booking_date;
```

Note:

- `DISTINCT` doesn't work as it doesn't aggregate data, but just removes duplicate rows from a column
- We can add multiple identifiers to the `GROUP BY` clause as shown below, but it'll increase the row count.

```sql
  -- show # of guests, their payment methods and the dates they came in
  SELECT p.name, b.booking_date, SUM(b.num_guests)
  FROM payment_methods AS p
  INNER JOIN bookings AS b ON p.id = b.payment_id
  GROUP BY p.name, b.booking_date;
```

## GROUP BY & HAVING vs WHERE

### **WHERE vs HAVING**

#### `WHERE`

e.g.

```sql
  SELECT booking_date, COUNT(booking_date)
  FROM bookings
  WHERE amount_billed > 30
  GROUP BY booking_date;
```

- is used to create filters for RAW DATA
- doesn't contain any aggregation functions
- is placed and performed before any `GROUP BY` statement

#### `HAVING`

e.g.

```sql
  SELECT booking_date, COUNT(booking_date)
  FROM bookings
  GROUP BY booking_date
  HAVING SUM(amount_billed) > 30;
```

- is used to create filters for AGGREGATED DATA
- it's positioned after `GROUP BY`

Note:

- If you need an aggregate function in your filter, use `HAVING`, and if you don't need one, use `WHERE`
- You can use HAVING on raw data, but you shouldn't

## Window Functions

- These are similar to aggregate functions.
- They allow us to apply aggregate functions with the same abilities e.g. SUM, COUNT etc without reducing the input of the underlying table to the result of the function operations to a single value. i.e. Aggregation function results are added to another table
- They are added using `OVER()` as shown in the example below

```sql
  SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER ()
  FROM bookings;
```

- they can use partitions (groups) for window functions too
  Partitions are like groups, but for window functions

```sql
  SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER (PARTITION BY booking_date)
  FROM bookings;
```

- we can use ORDER BY to incrementally apply the aggregate function as shown below

```sql
SELECT booking_date, amount_tipped, SUM(amount_tipped)
OVER (PARTITION BY booking_date ORDER BY amount_billed)
FROM bookings;
```
