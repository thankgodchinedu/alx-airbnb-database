# Task 0 – Complex Queries with Joins

This task demonstrates the use of different SQL joins on the Airbnb Clone database schema.

## Queries

1. **INNER JOIN**
   - Retrieves all bookings and their associated users.
   - Ensures only users who have bookings appear in the result.

2. **LEFT JOIN**
   - Retrieves all properties and their reviews.
   - Includes properties that have no reviews.

3. **FULL OUTER JOIN**
   - Retrieves all users and all bookings.
   - Includes users with no bookings and bookings with no linked users.
   - Implemented using a `UNION` of `LEFT JOIN` and `RIGHT JOIN` because MySQL does not support `FULL OUTER JOIN`.

## Files

- **joins_queries.sql** → Contains the SQL queries.
- **README.md** → This documentation.

## Next Steps

Proceed to:
- Task 1 → Subqueries
- Task 2 → Aggregations and Window Functions

---

# Task 1 – Practice Subqueries

This task demonstrates the use of both **non-correlated** and **correlated** subqueries.

## Queries

1. **Non-correlated Subquery**
   - Finds all properties where the average rating is greater than 4.0.
   - Uses an aggregation on the `reviews` table.

2. **Correlated Subquery**
   - Finds users who have made more than 3 bookings.
   - The inner query references the outer query (`u.id`).

## Files

- **subqueries.sql** → Contains the SQL queries for Task 1.
- **README.md** → Updated documentation.

---

# Task 2 – Aggregations and Window Functions

This task demonstrates the use of SQL aggregation functions and window functions.

## Queries

1. **Total Bookings per User**
   - Uses `COUNT` with `GROUP BY` to calculate the number of bookings each user has made.
   - Ensures every user is included, even if they have zero bookings.

2. **Rank Properties by Total Bookings (RANK)**
   - Uses the `RANK()` window function to rank properties based on the number of bookings.
   - Helps identify the most popular properties, handling ties properly (two properties can share the same rank).

3. **Number Properties by Total Bookings (ROW_NUMBER)**
   - Uses the `ROW_NUMBER()` window function to assign a sequential number to each property ordered by booking count.
   - Unlike `RANK()`, it does not allow ties (each row gets a unique number).

## Files

- **aggregations_and_window_functions.sql** → Contains the SQL queries for Task 2, including:
  - Aggregation with `COUNT` + `GROUP BY`
  - Window functions with `RANK()` and `ROW_NUMBER()`
- **README.md** → Updated documentation

---

# Task 3 – Implement Indexes for Optimization

## Overview

This task focuses on identifying high-usage columns and creating indexes to improve query performance.

## Deliverables

- **database_index.sql** → Contains `CREATE INDEX` commands.
- **index_performance.md** → Explains the indexes created and documents performance improvements using `EXPLAIN` and `ANALYZE`.

---

# Task 4 – Optimize Complex Queries

## Overview

This task focuses on analyzing a complex query that retrieves bookings along with user, property, and payment details.  
We refactored the query to reduce execution time by:
- Selecting only necessary columns.
- Using indexes created in Task 3.
- Verifying improvements with `EXPLAIN ANALYZE`.

## Deliverables

- **perfomance.sql** → Contains the original query, analysis, and optimized query.
- **optimization_report.md** → Documents performance analysis and improvements.
