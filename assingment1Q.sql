CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    CustomerId INT,
    SalesmanId INT,
    OrderDate DATE NOT NULL,
    Amount int
    );
    
    INSERT INTO Orders (OrderId, CustomerId, SalesmanId, OrderDate, Amount) VALUES
(5001, 2345, 101, '2021-07-04', 550),
(5003, 1234, 105, '2022-02-15', 1500);


select * from orders;

  -- 1 question))))))))))))))

INSERT INTO Orders (OrderId, CustomerId, SalesmanId,Orderdate,Amount)
VALUES (5004, 1200, 201,'2025-09-24', 2000);


CREATE TABLE Salesman (
    SalesmanId INT PRIMARY KEY,
    SalesmanName VARCHAR(50) NOT NULL,
    Commission DECIMAL(10,2),
    City VARCHAR(50) DEFAULT 'Not Available',
    Age INT
);

INSERT INTO Salesman (SalesmanId, SalesmanName, Commission, City, Age) VALUES
(101, 'Joe', 50, 'California', 17),
(102, 'Simon', 75, 'Texas', 25),
(103, 'Jessie', 105, 'Florida', 35),
(104, 'Danny', 100, 'Texas', 22),
(105, 'Lia', 65, 'New Jersy', 30);


select * from salesman;

-- 2 question))))))))))

ALTER TABLE Salesman
ADD CONSTRAINT Salesman PRIMARY KEY (SalesmanId);

ALTER TABLE Salesman
ALTER City SET DEFAULT 'Not Available';

drop table customer;


CREATE TABLE Customer (
    CustomerId INT,
    SalesmanId INT,
    CustomerName VARCHAR(50) NOT NULL,
    PurchaseAmount int
);

INSERT INTO Customer (CustomerId, SalesmanId, CustomerName, PurchaseAmount) VALUES
(2346, 101, 'Andrew', 550),
(1575, 103, 'Lucky', 4500),
(2345, 104, 'Andrew', 4000),
(3747, 107, 'Remona', 2700),
(4004, 110, 'Julia', 4545);




select * from customer;

ALTER TABLE Customer
ADD CONSTRAINT Customer_Salesman
FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId);

ALTER TABLE Customer
MODIFY Customername VARCHAR(100) NOT NULL;


-- 3 question)))))))))))))))))))))


SELECT c.CustomerName, c.PurchaseAmount
FROM Customer c
JOIN Orders o ON c.CustomerId = o.CustomerId
WHERE c.CustomerName LIKE '%N'
  AND c.PurchaseAmount >500;
  
-- 4 question)))))

SELECT SalesmanId FROM Salesman
UNION
SELECT SalesmanId FROM Customer;

SELECT SalesmanId FROM Salesman
UNION ALL
SELECT SalesmanId FROM Customer;

-- 5)questios


  
  select * from customer;
  SELECT o.OrderDate, s.SalesmanName, c.CustomerName, s.Commission, s.City
FROM Orders o
JOIN Customer c ON o.CustomerId = c.CustomerId
JOIN Salesman s ON o.SalesmanId = s.SalesmanId
WHERE o.Amount BETWEEN 500 AND 1500;

-- 6questions)))))))))))
SELECT s.SalesmanId, s.SalesmanName, o.OrderId, o.Amount, o.OrderDate
FROM Salesman s
RIGHT JOIN Orders o ON s.SalesmanId = o.SalesmanId;











