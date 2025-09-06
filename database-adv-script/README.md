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
