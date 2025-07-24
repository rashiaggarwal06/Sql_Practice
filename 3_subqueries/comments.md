# 3_subqueries – Nested & Correlated Subqueries

This folder demonstrates two powerful SQL concepts:

## 🔹 nested_subquery.sql
- **Use Case:** Find employees earning above average.
- A nested subquery runs independently of the outer query.
- Example: `salary > (SELECT AVG(salary) FROM Employees)`

## 🔹 correlated_subquery.sql
- **Use Case:** Get students who scored above their own class average.
- A correlated subquery depends on the outer query and runs for each row.
- Example: `marks > (SELECT AVG(marks) FROM Students WHERE class = s1.class)`

💡 Tip:
- Use **nested** when comparing against a fixed result.
- Use **correlated** when the subquery must adapt to each row of the outer query.
