-- Non-Correlated subquery, finds all properties where the average rating is greater than 4.0
-- The subquery calculates the average rating per property_id.
-- The outer query retrieves all property details where the average is above 4.0.

SELECT *
FROM properties
WHERE property_id IN (
  SELECT property_id
  FROM reviews
  GROUP BY property_id
  HAVING AVG(rating) > 4.0
);

-- Correlated query, find users who have made more than 3 bookings
-- The subquery counts bookings for each user in the outer query.
-- Because it references u.user_id (from the outer query), it is correlated.
-- It runs once for each user row to determine if that user has > 3 bookings

SELECT u.user_id, u.first_name, u.last_name
FROM users u
WHERE (
  SELECT COUNT(*)
  FROM bookings b
  WHERE b.user_id = u.user_id
) > 3;