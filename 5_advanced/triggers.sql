-- Trigger to log every insert into Products table

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE Product_Log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    action_time DATETIME
);

-- Trigger to log insert action
DELIMITER //
CREATE TRIGGER log_product_insert
AFTER INSERT ON Products
FOR EACH ROW
BEGIN
    INSERT INTO Product_Log(product_id, action_time)
    VALUES (NEW.product_id, NOW());
END;
//
DELIMITER ;
