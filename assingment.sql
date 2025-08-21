create database assignment;

-- 1 q

 use assignment;
CREATE TABLE Departments
    (DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL UNIQUE);

CREATE TABLE Students
   ( StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 17),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));
    
    drop table course;
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));


-- 2q

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(1, 'Computer Science'),
(2, 'Mechanical'),
(3, 'Electrical'),
(4, 'Civil'),
(5, 'Electronics');


INSERT INTO Students (StudentID, Name, Age, DepartmentID)
VALUES
(101, 'Ravi', 21, 1),
(102, 'Priya', 19, 2),
(103, 'Arjun', 22, 5),
(104, 'Meena', 18, 3),
(105, 'Suresh', 25, 4);


INSERT INTO Courses (CourseID, CourseName, DepartmentID)
VALUES
(201, 'DBMS', 1),
(202, 'Thermodynamics', 2),
(203, 'Circuits', 3),
(204, 'Structures', 4),
(205, 'AI', 1);

-- 3q

SELECT * FROM Students
WHERE Age > 20;


SELECT c.CourseName
FROM Courses c
JOIN Departments d ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';


SELECT s.Name, s.Age
FROM Students s
JOIN Departments d ON s.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Electronics';


SELECT * FROM Students
WHERE Age BETWEEN 18 AND 22;

-- 4q


SELECT s.Name, d.DepartmentName
FROM Students s
INNER JOIN Departments d ON s.DepartmentID = d.DepartmentID;


SELECT c.CourseName, d.DepartmentName
FROM Courses c
LEFT JOIN Departments d ON c.DepartmentID = d.DepartmentID;


SELECT s.Name, c.CourseName
FROM Students s
RIGHT JOIN Courses c ON s.DepartmentID = c.DepartmentID;
