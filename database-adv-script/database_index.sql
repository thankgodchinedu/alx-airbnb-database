-- Create indexes on frequently used columns in Airbnb schema

-- Users table
CREATE INDEX idx_users_email ON users(email);

-- Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Properties table
CREATE INDEX idx_properties_location ON properties(location);

-- Reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Measure query performance before and after using EXPLAIN ANALYZE

-- Example 1: Lookup bookings by user_id
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 101;

-- Example 2: Lookup properties by location
EXPLAIN ANALYZE SELECT * FROM properties WHERE location = 'Lagos';

-- Example 3: Join bookings with users
EXPLAIN ANALYZE
SELECT b.id, b.start_date, u.name
FROM bookings b
JOIN users u ON b.user_id = u.id;

-- Example 4: Join properties with reviews
EXPLAIN ANALYZE
SELECT p.id, p.title, r.rating
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;
