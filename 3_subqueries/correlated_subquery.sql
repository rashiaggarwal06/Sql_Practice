-- CORRELATED SUBQUERY: Students who scored above the average of their class

-- Table creation
CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    class INT,
    marks INT,
    PRIMARY KEY(student_id)
);

-- Insert data
INSERT INTO Students VALUES
(1, 'Rashi', 10, 85),
(2, 'Aman', 10, 70),
(3, 'Vikram', 11, 88),
(4, 'Neha', 11, 78),
(5, 'Rohit', 10, 90),
(6, 'Isha', 11, 75);

-- Correlated Subquery Example
-- Fetch students who scored above their own class average
SELECT name, class, marks
FROM Students s1
WHERE marks > (
    SELECT AVG(marks)
    FROM Students s2
    WHERE s2.class = s1.class
);
