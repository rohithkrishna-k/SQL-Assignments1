-- 1 question)))))))))))))))))))))))))))

CREATE TABLE Orders2 (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(10,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer2(customer_id)
);

-- 2question)))))))))))))))))))))))))))))))))))))))))))

INSERT INTO Orders2 (order_id,order_date, amount, customer_id)
VALUES
(10,'2025-09-01', 250, 1),
(20,'2025-09-02', 500, 2),
(30,'2025-09-03', 120, 3),
(40,'2025-09-04', 350, 4),
(50,'2025-09-05', 200, 1);


select * from orders2;

-- 3 question)))))))))))))))))))))))))))))))))))))))))))

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.order_date, o.amount
FROM customer2 c
INNER JOIN Orders2 o
ON c.customer_id = o.customer_id;


-- 4 qustions)))))))))))))))))))))))))))))))))))))))))))))))))

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.order_date, o.amount
FROM customer2 c
LEFT JOIN Orders2 o
ON c.customer_id = o.customer_id;

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.order_date, o.amount
FROM customer2 c
RIGHT JOIN Orders2 o
ON c.customer_id = o.customer_id;

-- 5 questions)))))))))))))))))))))))))))))))))))))))))))))))))))))

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.order_date, o.amount
FROM customer2 c
LEFT JOIN Orders2 o
ON c.customer_id = o.customer_id

UNION

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.order_date, o.amount
FROM customer2 c
RIGHT JOIN Orders2 o
ON c.customer_id = o.customer_id;

-- 6 questions))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

UPDATE Orders2
SET amount = 100
WHERE customer_id = 3;





