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

## **GROUP BY & HAVING vs WHERE**
