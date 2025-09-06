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
   - Ordered by most active users first.

2. **Rank Properties by Total Bookings**
   - Uses `RANK()` window function to rank properties based on the number of bookings they received.
   - Helps identify the most popular properties.

## Files

- **aggregations_and_window_functions.sql** → Contains the SQL queries for Task 2.
- **README.md** → Updated documentation.
