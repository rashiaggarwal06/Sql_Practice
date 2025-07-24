-- LEFT and RIGHT JOIN Example
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT
);

INSERT INTO Courses VALUES (1, 'SQL'), (2, 'Python'), (3, 'Java');
INSERT INTO Students VALUES (101, 'Rashi', 1), (102, 'Aman', 2);

-- LEFT JOIN: all students with their course names
SELECT s.name, c.course_name
FROM Students s
LEFT JOIN Courses c ON s.course_id = c.course_id;

-- RIGHT JOIN: all courses and students enrolled (if any)
SELECT s.name, c.course_name
FROM Students s
RIGHT JOIN Courses c ON s.course_id = c.course_id;
