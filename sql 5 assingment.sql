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


-- 1 questions))))))))))))))))))))))))))))))))))))))))))))))))))))))))

SELECT *
FROM Orders2
ORDER BY amount DESC;

-- 2 questions))))))))))))))))))))))))))))))))))))))))))))))))))))))))

CREATE TABLE Employee_details1 (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Emp_salary DECIMAL(10,2)
);

CREATE TABLE Employee_details2 (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Emp_salary DECIMAL(10,2)
);

INSERT INTO Employee_details1 VALUES 
(1, 'John', 50000),
(2, 'Alice', 60000),
(3, 'Bob', 55000);

INSERT INTO Employee_details2 VALUES 
(2, 'Alice', 60000),
(3, 'Bob', 55000),
(4, 'David', 70000);


-- 3 questions))))))))))))))))))))))))))))))))))))))))))))))))))))))))


SELECT * FROM Employee_details1
UNION
SELECT * FROM Employee_details2;

-- 4 questions))))))))))))))))))))))))))))))))))))))))))))))))))))))))

SELECT * 
FROM Employee_details1
INNER JOIN Employee_details2 
USING (Emp_id, Emp_name, Emp_salary);

-- 5 questions))))))))))))))))))))))))))))))))))))))))))))))))))))))))


SELECT e1.* 
FROM Employee_details1 e1
LEFT JOIN Employee_details2 e2
USING (Emp_id, Emp_name, Emp_salary)
WHERE e2.Emp_id IS NULL;








