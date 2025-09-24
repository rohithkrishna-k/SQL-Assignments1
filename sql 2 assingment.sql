
-- 1 questions))))))))))))))))))))))))

CREATE TABLE customer2 (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(10)
);


-- 2questions))))))))))))))))))))))))))))))


INSERT INTO customer2 (first_name, last_name, email, address, city, state, zip)
VALUES 
('rohith', 'k', 'rohithanderson@gmail.com', ' Main St', 'San Jose', 'kl', '95112'),
('jishnu', 'kk', 'jishnumiller@yahoo.com', 'Oak Ave', 'Los Angeles', 'kl', '90001'),
('Gavin', 'Smith', 'gavinsmith@gmail.com', 'Pine Rd', 'San jose', 'ml', '95123'),
('ronaldo', 'krishna', 'ronaldokrid@gmail.com', ' Elm St', 'San Diego', 'ml', '92101'),
('messi', 'krishna', 'messik@hotmail.com', 'Maple Dr', 'San franco', 'bl', '95111');


-- 3 questions)))))))))))))))))))))))))))))))

SELECT first_name,last_name
FROM customer2;

-- 4 questions))))))))))))))))))))))))))))))))


SELECT *
FROM customer2
WHERE first_name LIKE 'G%' 
  AND city = 'San Jose';
  
  -- 5 question)))))))))))))))))))))))))))))))))))
  
  SELECT *
FROM customer2
WHERE email LIKE '%gmail%';

-- 6 question)))))))))))))))))))))))))))))))))))))))

SELECT *
FROM customer2
WHERE last_name NOT LIKE '%A';






