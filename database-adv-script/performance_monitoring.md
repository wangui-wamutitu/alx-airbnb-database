# Query Performance Optimization Report

## Objective

Continuously monitor and refine database performance by analyzing query execution plans and applying schema improvements.

---

## Step 1: Monitor Queries Using `EXPLAIN ANALYZE`

### Query Analyzed

```sql
SELECT
  u.first_name,
  b.booking_id,
  b.start_date,
  p.name AS property_name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE b.start_date BETWEEN '2025-01-01' AND '2025-03-31';

```

### Results
Seq Scan on bookings  (cost=... rows=100000)
Execution Time: 220 ms

### Bottlenecks Identified
- PostgreSQL was performing a sequential scan on the entire bookings table.
- No effective index was being used on start_date.
- The query joined large tables without using partitioning or targeted indexes.

### Optimization Changes Applied
✅ Indexes Added

```sql

-- Index on filtered column
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Composite index for multi-filter joins
CREATE INDEX idx_bookings_user_property_date
  ON bookings(user_id, property_id, start_date);

```

✅ Table Partitioning

```sql
    -- Partitioned bookings by start_date
    CREATE TABLE bookings (
    ...
    ) PARTITION BY RANGE (start_date);

    -- Year-based partitions
    CREATE TABLE bookings_2025 PARTITION OF bookings
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');
```

### Re-Tested Query
# New EXPLAIN ANALYZE Output

Append on bookings_2025
Index Scan using idx_bookings_2025_start_date ...
Execution Time: 28 ms


✅ Conclusion
Partitioning the bookings table by start_date and applying proper indexes significantly improved query performance.

- Reduced row scans
- Leveraged index scans instead of full table scans
- Enabled PostgreSQL's partition pruning if using PostgreSQL