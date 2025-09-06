-- 1. Aggregation with COUNT + GROUP BY
-- Find the total number of bookings made by each user
SELECT u.id AS user_id, u.name, COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name;

-- 2. Window Function with RANK
-- Rank properties based on how many bookings they have received
SELECT p.id AS property_id, p.title, COUNT(b.id) AS booking_count,
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS property_rank
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.title;

-- 3. Window Function with ROW_NUMBER
-- Assign a row number to properties ordered by total bookings
SELECT p.id AS property_id, p.title, COUNT(b.id) AS booking_count,
       ROW_NUMBER() OVER (ORDER BY COUNT(b.id) DESC) AS row_num
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.title;

