# Task 6 – Monitor and Refine Database Performance

## Overview
This task focuses on monitoring and refining database performance using tools like `EXPLAIN ANALYZE` to understand query execution plans, identify bottlenecks, and apply optimizations.

## Queries Monitored
1. **Retrieve bookings with user and property details**
```sql
EXPLAIN ANALYZE
SELECT b.id, b.start_date, b.end_date,
       u.name, p.title
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id;
