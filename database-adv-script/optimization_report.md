### Common Inefficiencies after analyzing the query’s performance using EXPLAIN:

- Sequential scans: PostgreSQL may read entire tables if indexes are missing
- Unfiltered joins: Joining large tables without WHERE limits can explode row combinations
- Missing indexes: On user_id, property_id, booking_id
