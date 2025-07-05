-- USERS table indexes
CREATE INDEX idx_users_email ON users(email);

-- BOOKINGS table indexes
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- PROPERTIES table indexes
CREATE INDEX idx_properties_location ON properties(location);


-- Analyze performance of user bookings query

EXPLAIN ANALYZE
SELECT u.first_name, b.start_date
FROM users u
JOIN bookings b ON u.user_id = b.user_id
WHERE u.email = 'john.smith@email.com'
ORDER BY b.start_date DESC;