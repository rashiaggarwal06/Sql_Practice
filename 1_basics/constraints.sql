-- Create a Users table with common constraints
CREATE TABLE Users (
    user_id INT PRIMARY KEY,                 -- Unique identifier
    username VARCHAR(50) NOT NULL,           -- Cannot be empty
    email VARCHAR(100) UNIQUE NOT NULL,      -- Must be unique
    password VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18),               -- Age must be at least 18
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert valid user data
INSERT INTO Users (user_id, username, email, password, age)
VALUES 
(1, 'rashi', 'rashi@example.com', 'pass123', 21),
(2, 'neha', 'neha@example.com', 'neha@321', 22);

-- This query will fail due to age constraint
-- INSERT INTO Users (user_id, username, email, password, age)
-- VALUES (3, 'young_user', 'young@example.com', 'abc123', 15);

-- This will fail due to UNIQUE constraint on email
-- INSERT INTO Users (user_id, username, email, password, age)
-- VALUES (3, 'another_rashi', 'rashi@example.com', 'newpass', 25);

-- Select all users
SELECT * FROM Users;
