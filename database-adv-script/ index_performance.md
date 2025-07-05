# Query Performance Summary: User Bookings by Email

## Query Objective

Retrieve all bookings for a user with a specific email (`'john.smith@email.com'`), showing the user's first name and each booking's start date in descending order.

---

## Indexes Used

- `idx_users_email` on `users(email)`  
  ➤ Enables fast lookup of the user by email instead of scanning the entire users table.

- `idx_bookings_user_id` on `bookings(user_id)`  
  ➤ Enables efficient join between `users` and `bookings` on `user_id`.

- `idx_bookings_start_date` on `bookings(start_date)`  
  ➤ May be used to speed up the `ORDER BY start_date DESC`.

---

## Expected Query Plan (`EXPLAIN ANALYZE`)

1. **Index Scan** on `users` using `idx_users_email` to quickly find the user with the given email.
2. **Nested Loop Join** or **Hash Join** with `bookings` using `user_id`, accelerated by `idx_bookings_user_id`.
3. **Index Scan or Sort** on `start_date` to return bookings in descending order.

---

## Expected Performance

- Fast lookup due to targeted indexes.
- Minimal rows scanned, only the bookings for one user.
- Efficient execution even on large datasets.

---

## Note

If the number of bookings for a user is large, PostgreSQL might still need to sort the result — unless it uses the `start_date` index with a matching sort order. Index-only scans may be used if all selected columns exist in the index.

