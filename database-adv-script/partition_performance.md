# Booking Table Partitioning: Performance Improvement Report

## Objective

Improve query performance on the large `bookings` table by implementing **table partitioning** based on the `start_date` column.

---

## Observations

- **Before Partitioning**:  
  PostgreSQL performed a **sequential scan** across the entire `bookings` table when querying by date.

- **After Partitioning**:  
  Queries targeting a specific date range accessed **only the relevant partition** (e.g., `bookings_2025`), thanks to **partition pruning**.

- `EXPLAIN ANALYZE` showed:
  - Reduced execution time
  - Use of **index scans** on partitioned tables
  - No full table scan on the parent table

---

## 🧪 EXPLAIN Output Example

Instead of: Seq Scan on bookings
You see: Append on bookings_2025
Index Scan using idx_bookings_2025_start_date


---

## Results

| Query                      | Before Partitioning         | After Partitioning               |
|----------------------------|-----------------------------|----------------------------------|
| Fetch Q1 2025 bookings     | Seq Scan (~100,000 rows)    | Partition scan (~25,000 rows)    |
| Average query time         | ~250ms                      | ~60ms                            |

---

## Conclusion

Partitioning the `bookings` table by `start_date` provides **clear and measurable performance improvements**.

It:
- Reduces the number of rows scanned
- Enables **faster index-based access**
- Optimizes **time-based queries** on large datasets

This approach is ideal for applications with large historical booking data, where queries often target a specific time window.

---

