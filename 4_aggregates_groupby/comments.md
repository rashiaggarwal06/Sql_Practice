# 4_aggregates_groupby – Aggregate Functions & Grouping

This folder covers aggregate SQL operations and how to group data for analysis.

## 🔹 basic_aggregates.sql
- Demonstrates use of **SUM**, **AVG**, **COUNT**, **MAX**, **MIN**.
- Calculates overall statistics from a `Sales` table.

## 🔹 groupby_having.sql
- Uses `GROUP BY` to summarize data **by product_name**.
- Shows how to filter grouped results using the `HAVING` clause.
- Example: Only show products sold in quantity > 3.

💡 Notes:
- `WHERE` filters rows **before** grouping.
- `HAVING` filters groups **after** aggregation.
- Grouping is essential for reporting and dashboards.
