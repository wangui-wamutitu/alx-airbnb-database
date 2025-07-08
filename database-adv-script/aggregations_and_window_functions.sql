-- Using COUNT() and GROUP BY to show how many bookings each user made.
-- LEFT JOIN ensures users with 0 bookings are included.

SELECT 
  u.user_id,
  u.first_name,
  u.last_name,
  COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name;

-- COUNT() counts bookings for each property.
-- ROW_NUMBER() OVER (ORDER BY COUNT(...) DESC) ranks them from most to fewest bookings.
-- PS: GROUP BY is required before using a window function on aggregated values.

SELECT 
  p.property_id,
  p.name AS property_name,
  COUNT(b.booking_id) AS booking_count,
  ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS row_number_rank,
  RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank
FROM properties p
LEFT JOIN bookings b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name;