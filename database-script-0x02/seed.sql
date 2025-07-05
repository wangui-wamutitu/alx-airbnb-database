-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('a3f1e480-1a2b-4f0b-9e5b-111111111111', 'John', 'Smith', 'john.smith@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewEyD.Uy1.QW8mCK', '555-0101', 'guest', '2025-07-05 10:00:00'),
('a3f1e480-1a2b-4f0b-9e5b-222222222222', 'Jane', 'Doe', 'jane.doe@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewEyD.Uy1.QW8mCK', '555-0102', 'host', '2025-07-05 10:00:00'),
('a3f1e480-1a2b-4f0b-9e5b-333333333333', 'Mike', 'Johnson', 'mike.j@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewEyD.Uy1.QW8mCK', '555-0103', 'guest', '2025-07-05 10:00:00'),
('a3f1e480-1a2b-4f0b-9e5b-444444444444', 'Lucy', 'Kim', 'lucy.k@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewEyD.Uy1.QW8mCK', '555-0104', 'guest', '2025-07-05 10:00:00'),
('a3f1e480-1a2b-4f0b-9e5b-555555555555', 'Tom', 'Brown', 'tom.b@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewEyD.Uy1.QW8mCK', '555-0105', 'guest', '2025-07-05 10:00:00'),
('a3f1e480-1a2b-4f0b-9e5b-666666666666', 'Anna', 'Wright', 'anna.w@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewEyD.Uy1.QW8mCK', '555-0106', 'host', '2025-07-05 10:00:00'),
('a3f1e480-1a2b-4f0b-9e5b-777777777777', 'Eric', 'Nash', 'eric.n@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewEyD.Uy1.QW8mCK', '555-0107', 'admin', '2025-07-05 10:00:00'),
('a3f1e480-1a2b-4f0b-9e5b-888888888888', 'Sara', 'Lee', 'sara.l@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewEyD.Uy1.QW8mCK', '555-0108', 'guest', '2025-07-05 10:00:00');

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
('b1f1e480-2b2b-4f0b-9e5b-111111111111', 'a3f1e480-1a2b-4f0b-9e5b-222222222222', 'Skyline Apartment', 'Modern space with city views', 'Nairobi, Kenya', 100, '2025-07-05 10:00:00', '2025-07-05 10:00:00'),
('b1f1e480-2b2b-4f0b-9e5b-222222222222', 'a3f1e480-1a2b-4f0b-9e5b-666666666666', 'Ocean Breeze', 'Relaxing beach house', 'Diani, Kenya', 200, '2025-07-05 10:00:00', '2025-07-05 10:00:00'),
('b1f1e480-2b2b-4f0b-9e5b-333333333333', 'a3f1e480-1a2b-4f0b-9e5b-222222222222', 'Lakeside Villa', 'Villa near the lake', 'Kisumu, Kenya', 180, '2025-07-05 10:00:00', '2025-07-05 10:00:00'),
('b1f1e480-2b2b-4f0b-9e5b-444444444444', 'a3f1e480-1a2b-4f0b-9e5b-666666666666', 'Safari Lodge', 'Eco-lodge near park', 'Naivasha, Kenya', 150, '2025-07-05 10:00:00', '2025-07-05 10:00:00');

-- BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('c1f1e480-3c3c-4f0b-9e5b-111111111111', 'b1f1e480-2b2b-4f0b-9e5b-111111111111', 'a3f1e480-1a2b-4f0b-9e5b-111111111111', '2025-07-10', '2025-07-13', 300, 'confirmed', '2025-07-05 10:00:00'),
('c1f1e480-3c3c-4f0b-9e5b-222222222222', 'b1f1e480-2b2b-4f0b-9e5b-222222222222', 'a3f1e480-1a2b-4f0b-9e5b-333333333333', '2025-07-14', '2025-07-17', 600, 'confirmed', '2025-07-05 10:00:00'),
('c1f1e480-3c3c-4f0b-9e5b-333333333333', 'b1f1e480-2b2b-4f0b-9e5b-333333333333', 'a3f1e480-1a2b-4f0b-9e5b-444444444444', '2025-07-18', '2025-07-21', 540, 'confirmed', '2025-07-05 10:00:00'),
('c1f1e480-3c3c-4f0b-9e5b-444444444444', 'b1f1e480-2b2b-4f0b-9e5b-444444444444', 'a3f1e480-1a2b-4f0b-9e5b-555555555555', '2025-07-22', '2025-07-25', 450, 'confirmed', '2025-07-05 10:00:00');

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('d1f1e480-4d4d-4f0b-9e5b-111111111111', 'c1f1e480-3c3c-4f0b-9e5b-111111111111', 300, '2025-07-05 10:00:00', 'credit_card'),
('d1f1e480-4d4d-4f0b-9e5b-222222222222', 'c1f1e480-3c3c-4f0b-9e5b-222222222222', 600, '2025-07-05 10:00:00', 'paypal'),
('d1f1e480-4d4d-4f0b-9e5b-333333333333', 'c1f1e480-3c3c-4f0b-9e5b-333333333333', 540, '2025-07-05 10:00:00', 'credit_card'),
('d1f1e480-4d4d-4f0b-9e5b-444444444444', 'c1f1e480-3c3c-4f0b-9e5b-444444444444', 450, '2025-07-05 10:00:00', 'stripe');

-- REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('e1f1e480-5e5e-4f0b-9e5b-111111111111', 'b1f1e480-2b2b-4f0b-9e5b-111111111111', 'a3f1e480-1a2b-4f0b-9e5b-111111111111', 5, 'Fantastic place!', '2025-07-05 10:00:00'),
('e1f1e480-5e5e-4f0b-9e5b-222222222222', 'b1f1e480-2b2b-4f0b-9e5b-222222222222', 'a3f1e480-1a2b-4f0b-9e5b-333333333333', 4, 'Very clean and cozy.', '2025-07-05 10:00:00'),
('e1f1e480-5e5e-4f0b-9e5b-333333333333', 'b1f1e480-2b2b-4f0b-9e5b-333333333333', 'a3f1e480-1a2b-4f0b-9e5b-444444444444', 5, 'Loved the location.', '2025-07-05 10:00:00'),
('e1f1e480-5e5e-4f0b-9e5b-444444444444', 'b1f1e480-2b2b-4f0b-9e5b-444444444444', 'a3f1e480-1a2b-4f0b-9e5b-555555555555', 4, 'Would definitely return.', '2025-07-05 10:00:00');

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('f1f1e480-6f6f-4f0b-9e5b-111111111111', 'a3f1e480-1a2b-4f0b-9e5b-111111111111', 'a3f1e480-1a2b-4f0b-9e5b-222222222222', 'Hi, is this property available in August?', '2025-07-05 10:00:00'),
('f1f1e480-6f6f-4f0b-9e5b-222222222222', 'a3f1e480-1a2b-4f0b-9e5b-333333333333', 'a3f1e480-1a2b-4f0b-9e5b-666666666666', 'Can I check in early?', '2025-07-05 10:00:00'),
('f1f1e480-6f6f-4f0b-9e5b-333333333333', 'a3f1e480-1a2b-4f0b-9e5b-444444444444', 'a3f1e480-1a2b-4f0b-9e5b-222222222222', 'Is parking included?', '2025-07-05 10:00:00'),
('f1f1e480-6f6f-4f0b-9e5b-444444444444', 'a3f1e480-1a2b-4f0b-9e5b-555555555555', 'a3f1e480-1a2b-4f0b-9e5b-666666666666', 'How far is the lodge from the park?', '2025-07-05 10:00:00');
