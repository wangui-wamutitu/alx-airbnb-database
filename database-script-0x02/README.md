# 📦 Database Seed Script

This project includes a SQL seed script (`seed.sql`) that populates the database with sample data for testing and development.

## 📄 File Contents

The `seed.sql` file inserts sample records into the following tables:

- **users** – 8 users with various roles (`guest`, `host`, `admin`)
- **properties** – 4 properties listed by hosts
- **bookings** – 4 bookings made by users
- **payments** – 4 payment records for corresponding bookings
- **reviews** – 4 reviews left by guests on properties
- **messages** – 4 messages exchanged between users

All data uses valid UUIDs and consistent timestamps for realistic test conditions.

