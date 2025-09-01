-- Insert sample Users
INSERT INTO users (user_id, first_name, last_name, email, password, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'John', 'Doe', 'john.doe@example.com', 'hashedpassword1', '1234567890', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Alice', 'Smith', 'alice.smith@example.com', 'hashedpassword2', '0987654321', 'host'),
('33333333-3333-3333-3333-333333333333', 'Admin', 'User', 'admin@example.com', 'hashedpassword3', NULL, 'admin');

-- Insert sample Properties
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night, created_at)
VALUES
('44444444-4444-4444-4444-444444444444', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment', 'A nice cozy place', 'Lagos', 100.00, CURRENT_TIMESTAMP),
('55555555-5555-5555-5555-555555555555', '22222222-2222-2222-2222-222222222222', 'Beach House', 'Beautiful house by the sea', 'Abuja', 250.00, CURRENT_TIMESTAMP);

-- Insert sample Bookings
INSERT INTO bookings (booking_id, user_id, property_id, start_date, end_date, created_at)
VALUES
('66666666-6666-6666-6666-666666666666', '11111111-1111-1111-1111-111111111111', '44444444-4444-4444-4444-444444444444', '2025-09-05', '2025-09-10', CURRENT_TIMESTAMP);

-- Insert sample Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, status)
VALUES
('77777777-7777-7777-7777-777777777777', '66666666-6666-6666-6666-666666666666', 500.00, CURRENT_TIMESTAMP, 'completed');

-- Insert sample Reviews
INSERT INTO reviews (review_id, booking_id, rating, comment, created_at)
VALUES
('88888888-8888-8888-8888-888888888888', '66666666-6666-6666-6666-666666666666', 5, 'Amazing stay, very clean and comfortable!', CURRENT_TIMESTAMP);
