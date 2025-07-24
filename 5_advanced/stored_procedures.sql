-- Stored procedure to get orders above a certain amount

DELIMITER //
CREATE PROCEDURE GetBigOrders(IN min_amount DECIMAL(10,2))
BEGIN
    SELECT * FROM Orders WHERE total_amount > min_amount;
END;
//
DELIMITER ;

-- Call the procedure
CALL GetBigOrders(1000.00);
