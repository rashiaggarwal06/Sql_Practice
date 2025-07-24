-- Indexes improve search speed on large datasets

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

-- Create index on email column
CREATE INDEX idx_email ON Customers(email);

-- Using WHERE with indexed column
SELECT * FROM Customers WHERE email = 'amit@example.com';
