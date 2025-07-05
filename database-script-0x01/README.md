# Property Rental Platform Database Schema

This project defines a fully normalized relational database schema for a property rental platform (Airbnb clone), written using SQL `CREATE TABLE` statements.

## What’s Included

- SQL table definitions for all core entities:
  - `users`
  - `properties`
  - `bookings`
  - `payments`
  - `reviews`
  - `messages`
- Proper use of:
  - UUIDs as primary keys
  - Foreign key relationships
  - Data types and constraints (e.g., `CHECK`, `NOT NULL`, `UNIQUE`)
  - Enum-like fields using `CHECK` constraints
  - Indexes on commonly queried columns for performance optimization

## Normalization

The schema is normalized up to **Third Normal Form (3NF)**:
- Each table has atomic fields (1NF)
- Non-key attributes fully depend on the primary key (2NF)
- No transitive dependencies (3NF)

## Performance

To ensure efficient querying and joins, indexes have been added on:
- All primary key columns
- Foreign key columns (e.g., `host_id`, `property_id`, `user_id`)
- Frequently filtered fields like `booking_id`, `sender_id`, etc
