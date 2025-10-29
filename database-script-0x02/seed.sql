-- Airbnb Database Seeding Script
-- Database: alx-airbnb-database
-- Author: Oyesunle Lekan

-- Insert sample users

INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('u001', 'John', 'Doe', 'john.doe@example.com', 'hashed_pwd_001', '08011112222', 'host', CURRENT_TIMESTAMP),
('u002', 'Mary', 'Smith', 'mary.smith@example.com', 'hashed_pwd_002', '08022223333', 'guest', CURRENT_TIMESTAMP),
('u003', 'Alex', 'Brown', 'alex.brown@example.com', 'hashed_pwd_003', '08033334444', 'guest', CURRENT_TIMESTAMP),
('u004', 'Grace', 'Johnson', 'grace.johnson@example.com', 'hashed_pwd_004', '08044445555', 'host', CURRENT_TIMESTAMP);


-- Insert sample properties

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
('p001', 'u001', 'Cozy Apartment', 'A warm, cozy apartment near the beach.', 'Lagos, Nigeria', 25000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('p002', 'u001', 'Modern Loft', 'Stylish loft with city views and fast Wi-Fi.', 'Abuja, Nigeria', 45000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('p003', 'u004', 'Lakeview Cottage', 'Quiet lake house perfect for weekend getaways.', 'Ibadan, Nigeria', 30000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- Insert sample bookings

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('b001', 'p001', 'u002', '2025-10-01', '2025-10-05', 100000.00, 'confirmed', CURRENT_TIMESTAMP),
('b002', 'p002', 'u003', '2025-10-10', '2025-10-15', 225000.00, 'completed', CURRENT_TIMESTAMP),
('b003', 'p003', 'u002', '2025-11-01', '2025-11-03', 60000.00, 'pending', CURRENT_TIMESTAMP);


-- Insert sample payments

INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('pay001', 'b001', 100000.00, '2025-10-01', 'credit_card'),
('pay002', 'b002', 225000.00, '2025-10-09', 'bank_transfer'),
('pay003', 'b003', 60000.00, '2025-10-30', 'wallet');


-- Insert sample reviews

INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('r001', 'p001', 'u002', 5, 'Amazing stay! Very comfortable and clean.', CURRENT_TIMESTAMP),
('r002', 'p002', 'u003', 4, 'Great location but Wi-Fi could be faster.', CURRENT_TIMESTAMP),
('r003', 'p003', 'u002', 5, 'Loved the view and peaceful environment!', CURRENT_TIMESTAMP);


-- Insert sample messages

INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('m001', 'u002', 'u001', 'Hi John, is the apartment available next weekend?', CURRENT_TIMESTAMP),
('m002', 'u001', 'u002', 'Yes, it’s available! You can book directly.', CURRENT_TIMESTAMP),
('m003', 'u003', 'u004', 'Hi Grace, can you confirm my check-in time?', CURRENT_TIMESTAMP);
