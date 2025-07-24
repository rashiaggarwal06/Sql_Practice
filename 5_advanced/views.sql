-- Create a VIEW to simplify complex queries

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Orders VALUES
(1, 'Amit', '2025-07-01', 2000.50),
(2, 'Riya', '2025-07-02', 1500.75),
(3, 'Amit', '2025-07-04', 300.00);

-- Create a view for Amit's orders
CREATE VIEW Amit_Orders AS
SELECT * FROM Orders WHERE customer_name = 'Amit';

-- Query the view
SELECT * FROM Amit_Orders;
