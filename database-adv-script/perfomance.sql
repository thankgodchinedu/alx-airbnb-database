-- Initial complex query: Retrieve all bookings with user, property, and payment details
-- Includes WHERE and AND conditions to filter active payments only
SELECT b.id AS booking_id, b.start_date, b.end_date,
       u.id AS user_id, u.name, u.email,
       p.id AS property_id, p.title, p.location,
       pay.id AS payment_id, pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE pay.status = 'completed' AND b.start_date >= '2025-01-01';

-- Analyze performance of the initial query
EXPLAIN
SELECT b.id AS booking_id, b.start_date, b.end_date,
       u.id AS user_id, u.name, u.email,
       p.id AS property_id, p.title, p.location,
       pay.id AS payment_id, pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE pay.status = 'completed' AND b.start_date >= '2025-01-01';

-- Refactored query: Reduce execution time by selecting fewer columns and leveraging indexes
EXPLAIN
SELECT b.id, b.start_date, b.end_date,
       u.name, p.title, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE pay.status = 'completed' AND b.start_date >= '2025-01-01';
