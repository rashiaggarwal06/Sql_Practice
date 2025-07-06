-- Create a Students table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

-- Insert some student records
INSERT INTO Students (id, name, age, email)
VALUES 
(1, 'Rashi Aggarwal', 21, 'rashi@example.com'),
(2, 'Aman Verma', 22, 'aman@example.com'),
(3, 'Neha Sharma', 20, 'neha@example.com');

-- Select all students
SELECT * FROM Students;

-- Select students older than 21
SELECT * FROM Students WHERE age > 21;

-- Update a student's age
UPDATE Students SET age = 23 WHERE id = 1;

-- Delete a student by ID
DELETE FROM Students WHERE id = 3;

-- Count number of students
SELECT COUNT(*) AS total_students FROM Students;

-- Order students by age
SELECT * FROM Students ORDER BY age DESC;
