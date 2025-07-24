-- INNER JOIN: Get employee names with their department names
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);

INSERT INTO Department VALUES (1, 'HR'), (2, 'Engineering');
INSERT INTO Employee VALUES (101, 'Rashi', 2), (102, 'Aman', 1), (103, 'Vikram', 2);

-- Inner join: only those with matching dept_id
SELECT e.emp_name, d.dept_name
FROM Employee e
INNER JOIN Department d ON e.dept_id = d.dept_id;
