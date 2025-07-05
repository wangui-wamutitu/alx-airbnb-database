# Based on joins_queries.sql,

- **INNER JOIN**, Returns only bookings that have a matching user

- **LEFT join**, Get all properties and their reviews, even if a property has no reviews.
Includes all properties; review_id, rating, and comment will be NULL if there's no review.

- **FULL OUTER JOIN**, Get all users and all bookings, even if a user has no booking or a booking isn’t linked to a user.
It works in PostgreSQL. If you're on MySQL, simulate it using UNION of LEFT JOIN and RIGHT JOIN.

# Based on subqueries.sql,

- **Non-Correlated subquery**, finds all properties where the average rating is greater than 4.0
The subquery calculates the average rating per property_id.
The outer query retrieves all property details where the average is above 4.0.

- **Correlated query**, finds users who have made more than 3 bookings
The subquery counts bookings for each user in the outer query.
Because it references u.user_id (from the outer query), it is correlated.
It runs once for each user row to determine if that user has > 3 bookings

# Based on aggregations_and_window_functions.sql,

-Using COUNT() and GROUP BY to show how many bookings each user made.
LEFT JOIN ensures users with 0 bookings are included.

- COUNT() counts bookings for each property.
RANK() OVER (ORDER BY COUNT(...) DESC) ranks them from most to fewest bookings.
PS: GROUP BY is required before using a window function on aggregated values.