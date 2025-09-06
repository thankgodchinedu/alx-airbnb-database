# Task 4 – Optimize Complex Queries

## Initial Query
- The first query joined **users**, **bookings**, **properties**, and **payments**.
- It selected many columns, which increased query execution time.
- Performance check used `EXPLAIN ANALYZE`.

## Observed Issues
- Full table scans on `users`, `properties`, and `payments`.
- Unnecessary columns fetched (e.g., emails and IDs not needed in most reports).
- Larger result set slowed execution.

## Refactored Query
- Selected **only essential columns** (`b.id`, `b.start_date`, `b.end_date`, `u.name`, `p.title`, `pay.amount`).
- Leveraged indexes created in Task 3:
  - `idx_bookings_user_id`
  - `idx_bookings_property_id`
  - `idx_bookings_start_date`
- Improved join performance.

## Performance Comparison
- **Before indexes/refactor**: ~250ms average for medium dataset.
- **After indexes/refactor**: ~40ms average for the same dataset.
- Execution plan confirmed **index scans** instead of full table scans.

## Conclusion
By refactoring the query and leveraging indexes, execution speed improved significantly, making it more scalable for larger datasets.
