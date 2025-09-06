-- 1. Non-correlated subquery:
-- Find all properties where the average rating is greater than 4.0
SELECT p.id, p.title, p.location
FROM properties p
WHERE (
    SELECT AVG(r.rating)
    FROM reviews r
    WHERE r.property_id = p.id
) > 4.0;

-- 2. Correlated subquery:
-- Find users who have made more than 3 bookings
SELECT u.id, u.name, u.email
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3;
