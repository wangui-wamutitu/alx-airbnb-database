-- INNER JOIN, Returns only bookings that have a matching user

SELECT 
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  u.user_id,
  u.first_name,
  u.last_name,
  u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id;

-- LEFT join, Get all properties and their reviews, even if a property has no reviews.
-- Includes all properties; review_id, rating, and comment will be NULL if there's no review.

SELECT 
  p.property_id,
  p.name AS property_name,
  r.review_id,
  r.rating,
  r.comment
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id;

-- FULL OUTER JOIN, Get all users and all bookings, even if a user has no booking or a booking isn’t linked to a user.
-- It works in PostgreSQL. If you're on MySQL, simulate it using UNION of LEFT JOIN and RIGHT JOIN.

SELECT 
  u.user_id,
  u.first_name,
  u.email,
  b.booking_id,
  b.start_date,
  b.total_price
FROM users u
FULL OUTER JOIN bookings b ON u.user_id = b.user_id;