# Task 5 – Partitioning Large Tables

## Initial Setup
- The original `bookings` table was very large, and queries on `start_date` were scanning the full table.
- This resulted in high execution costs and slower response times.

## Implementation
- Created a new table `bookings_partitioned` partitioned by `RANGE (start_date)`.
- Added yearly partitions:
  - `bookings_2023`
  - `bookings_2024`
  - `bookings_2025`

## Performance Comparison

### Before Partitioning
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2025-01-01' AND '2025-03-31';
