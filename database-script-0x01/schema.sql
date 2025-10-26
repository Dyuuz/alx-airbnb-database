-- =====================================================
-- Airbnb Database - Seed Data Script
-- File: seed.sql
-- Description: Inserts sample data for all main entities
-- =====================================================

-- ========================
-- USER TABLE
-- ========================
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('u001', 'Wren', 'Clark', 'wren@example.com', 'hashedpass123', '08012345678', 'host', CURRENT_TIMESTAMP),
('u002', 'Jane', 'Doe', 'jane@example.com', 'hashedpass456', '08098765432', 'guest', CURRENT_TIMESTAMP),
('u003', 'John', 'Smith', 'john@example.com', 'hashedpass789', NULL, 'guest', CURRENT_TIMESTAMP),
('u004', 'Alice', 'Morgan', 'alice@example.com', 'hashedpass012', '08123456789', 'host', CURRENT_TIMESTAMP),
('u005', 'Admin', 'User', 'admin@airbnb.com', 'hashedadminpass', NULL, 'admin', CURRENT_TIMESTAMP);

-- ========================
-- PROPERTY TABLE
-- ========================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
('p001', 'u001', 'Seaside Villa', 'A beautiful villa overlooking the sea.', 'Lagos, Nigeria', 250.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('p002', 'u004', 'City Apartment', 'Modern apartment located in the city center.', 'Abuja, Nigeria', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('p003', 'u001', 'Mountain Cabin', 'Quiet cabin surrounded by nature.', 'Jos, Nigeria', 100.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- ========================
-- BOOKING TABLE
-- ========================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('b001', 'p001', 'u002', '2025-10-10', '2025-10-15', 1250.00, 'confirmed', CURRENT_TIMESTAMP),
('b002', 'p002', 'u003', '2025-10-20', '2025-10-25', 750.00, 'pending', CURRENT_TIMESTAMP),
('b003', 'p003', 'u002', '2025-11-01', '2025-11-05', 400.00, 'canceled', CURRENT_TIMESTAMP);

-- ========================
-- PAYMENT TABLE
-- ========================
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('pay001', 'b001', 1250.00, CURRENT_TIMESTAMP, 'credit_card'),
('pay002', 'b002', 750.00, CURRENT_TIMESTAMP, 'paypal');

-- ========================
-- REVIEW TABLE
-- ========================
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('r001', 'p001', 'u002', 5, 'Amazing place! Very clean and peaceful.', CURRENT_TIMESTAMP),
('r002', 'p002', 'u003', 4, 'Comfortable stay but a bit noisy.', CURRENT_TIMESTAMP),
('r003', 'p003', 'u002', 3, 'Nice view, but could use better facilities.', CURRENT_TIMESTAMP);

-- ========================
-- MESSAGE TABLE
-- ========================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('m001', 'u002', 'u001', 'Hi, is the Seaside Villa available next month?', CURRENT_TIMESTAMP),
('m002', 'u001', 'u002', 'Yes, it’s available for your selected dates.', CURRENT_TIMESTAMP),
('m003', 'u003', 'u004', 'Can I check in early for the City Apartment?', CURRENT_TIMESTAMP);
