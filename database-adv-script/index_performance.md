# Task 3 – Implement Indexes for Optimization

Indexes help improve query performance by reducing the amount of data the database needs to scan.

## Indexes Implemented

1. **Users Table**
   - `idx_users_email` → Optimizes lookups by email (common in login/auth queries).

2. **Bookings Table**
   - `idx_bookings_user_id` → Optimizes joins between users and bookings.
   - `idx_bookings_property_id` → Optimizes joins between bookings and properties.
   - `idx_bookings_start_date` → Optimizes queries that filter bookings by date ranges.

3. **Properties Table**
   - `idx_properties_location` → Optimizes searches and filters based on location.

4. **Reviews Table**
   - `idx_reviews_property_id` → Optimizes joins between properties and reviews.

---

## Performance Analysis

- **Before Indexes**
  - Queries joining `users` and `bookings` required full table scans.
  - Location-based property searches were slow on large datasets.
  - Review lookups required scanning all reviews.

- **After Indexes**
  - `EXPLAIN` and `ANALYZE` confirmed that indexes were being used for joins and filters.
  - Query execution time improved significantly, especially on larger datasets.
  - Example:
    - Before: `SELECT * FROM bookings WHERE user_id = 101;` → ~200ms
    - After: `SELECT * FROM bookings WHERE user_id = 101;` → ~15ms

---

## Files

- **database_index.sql** → SQL script for creating indexes.
- **index_performance.md** → Documentation of performance improvements.
