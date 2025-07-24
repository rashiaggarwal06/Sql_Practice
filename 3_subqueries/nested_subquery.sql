-- NESTED SUBQUERY: Employees with salary greater than average

-- Table creation
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);

-- Insert data
INSERT INTO Employees VALUES 
(1, 'Rashi', 60000),
(2, 'Aman', 50000),
(3, 'Vikram', 70000),
(4, 'Neha', 40000);

-- Nested Subquery Example
-- Fetch employees earning more than the average salary
SELECT emp_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);
