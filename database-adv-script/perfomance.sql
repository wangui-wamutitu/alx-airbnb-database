-- Initial query: Get full booking data with related user, property, and payment
SELECT 
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  b.status,
  
  u.user_id,
  u.first_name,
  u.last_name,
  u.email,

  p.property_id,
  p.name AS property_name,
  p.location,
  p.pricepernight,

  pay.payment_id,
  pay.amount,
  pay.payment_method,
  pay.payment_date

FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON pay.booking_id = b.booking_id;

EXPLAIN ANALYZE
SELECT 
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  b.status,
  
  u.user_id,
  u.first_name,
  u.last_name,
  u.email,

  p.property_id,
  p.name AS property_name,
  p.location,
  p.pricepernight,

  pay.payment_id,
  pay.amount,
  pay.payment_method,
  pay.payment_date

FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON pay.booking_id = b.booking_id;

-- Common Inefficiencies:
-- Sequential scans: PostgreSQL may read entire tables if indexes are missing
-- Unfiltered joins: Joining large tables without WHERE limits can explode row combinations
-- Missing indexes: On user_id, property_id, booking_id



--Refactoring

-- Make sure these indexes are present

CREATE INDEX IF NOT EXISTS idx_bookings_user_id ON bookings(user_id);
CREATE INDEX IF NOT EXISTS idx_bookings_property_id ON bookings(property_id);
CREATE INDEX IF NOT EXISTS idx_payments_booking_id ON payments(booking_id);
CREATE INDEX IF NOT EXISTS idx_bookings_status ON bookings(status);

-- Refactoring queries, e.g limited fields, where status = confirmed
SELECT 
  b.booking_id,
  b.start_date,
  b.end_date,
  u.first_name || ' ' || u.last_name AS guest_name,
  p.name AS property_name,
  pay.amount

FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON pay.booking_id = b.booking_id
WHERE b.status = 'confirmed';