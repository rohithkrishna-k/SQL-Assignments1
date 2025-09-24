CREATE TABLE Orders2 (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(10,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer2(customer_id)
);

INSERT INTO Orders2 (order_id,order_date, amount, customer_id)
VALUES
(10,'2025-09-01', 250, 1),
(20,'2025-09-02', 500, 2),
(30,'2025-09-03', 120, 3),
(40,'2025-09-04', 350, 4),
(50,'2025-09-05', 200, 1);


-- 1 question)))))))))))))))))))))))))))))))))))))))))))))))))))))))))

SELECT 
    MIN(amount) AS Min_Amount,
    MAX(amount) AS Max_Amount,
    AVG(amount) AS Avg_Amount
FROM Orders2;

-- 2 question)))))))))))))))))))))))))))))))))))))))))))))))))))))))))

DELIMITER $$

CREATE FUNCTION multiply_by_10 (num INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN num * 10;
END $$

DELIMITER ;

-- 3 question)))))))))))))))))))))))))))))))))))))))))))))))))))))))))

SELECT 
    CASE 
        WHEN 100 < 200 THEN '100 is less than 200'
        WHEN 100 > 200 THEN '100 is greater than 200'
        ELSE '100 is equal to 200'
    END AS Result;
    
    -- 4 question)))))))))))))))))))))))))))))))))))))))))))))))))))))))))

    SELECT order_id, amount,
    CASE 
        WHEN amount > 400 THEN 'High Amount'
        WHEN amount BETWEEN 200 AND 400 THEN 'Medium Amount'
        ELSE 'Low Amount'
    END AS Amount_Status
FROM Orders2;

    -- 5 question)))))))))))))))))))))))))))))))))))))))))))))))))))))))))

DELIMITER $$

CREATE FUNCTION amount_greater_than (input_amount DECIMAL(10,2))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(50);
    
    SELECT GROUP_CONCAT(amount) 
    INTO result
    FROM Orders
    WHERE amount > input_amount;
    
    RETURN result;
END $$

DELIMITER ;


    



