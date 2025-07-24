-- Transactions ensure atomicity (all-or-nothing operations)

CREATE TABLE BankAccounts (
    acc_id INT PRIMARY KEY,
    holder_name VARCHAR(100),
    balance DECIMAL(10,2)
);

-- Insert data
INSERT INTO BankAccounts VALUES (1, 'Amit', 5000), (2, 'Riya', 3000);

-- Transaction example: Transfer 1000 from Amit to Riya
START TRANSACTION;

UPDATE BankAccounts SET balance = balance - 1000 WHERE acc_id = 1;
UPDATE BankAccounts SET balance = balance + 1000 WHERE acc_id = 2;

-- If both succeed, commit. Else, rollback.
COMMIT;

-- To cancel manually (if error occurred): ROLLBACK;
