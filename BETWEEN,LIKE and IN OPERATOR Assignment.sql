CREATE TABLE Employees1 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(30),
    Salary INT,
    DOJ DATE
);

INSERT INTO Employees1 (EmpID, Name, Age, Department, Salary, DOJ) VALUES
(1, 'Amit Sharma', 28, 'HR', 35000, '2021-01-10'),
(2, 'Sneha Singh', 32, 'IT', 55000, '2020-08-15'),
(3, 'Raj Mehta', 25, 'Sales', 25000, '2022-03-20'),
(4, 'Shreya Jain', 29, 'IT', 60000, '2019-11-01'),
(5, 'Arjun Rao', 31, 'Finance', 48000, '2023-02-01'),
(6, 'Sanya Kapoor', 27, 'HR', 37000, '2021-06-12'),
(7, 'Rohit Kumar', 26, 'IT', 52000, '2023-01-01'),
(8, 'Anjali Verma', 30, 'Sales', 46000, '2020-05-30');

SELECT * FROM Employees1;

-- Assignment 

--  Practice Questions (Assignment)
-- ➤ BETWEEN based
-- List all employees with salary between 30000 and 50000.
-- Show employees who joined between '2021-01-01' and '2022-12-31'.

-- ➤ LIKE based
-- Find employees whose name starts with 'S'.
-- List employees whose name ends with 'a'.
-- Get employees whose name contains 'an'.

-- ➤ IN based
-- List employees who work in departments: IT, HR.
-- Show employees whose age is either 25, 28, or 30.


-- 1. Salary between 30000 and 50000:

SELECT * FROM Employees1
WHERE Salary BETWEEN 30000 AND 50000;

-- 2. DOJ between two dates:

SELECT * FROM Employees1
WHERE DOJ BETWEEN '2021-01-01' AND '2022-12-31';

-- 3. Name starts with 'S':

SELECT * FROM Employees1
WHERE Name LIKE 'S%';

-- 4. Name ends with 'a':

SELECT * FROM Employees1
WHERE Name LIKE '%a';

-- 5. Name contains 'an':

SELECT * FROM Employees1
WHERE Name LIKE '%an%';

-- 6. Departments: IT, HR:

SELECT * FROM Employees1
WHERE Department IN ('IT', 'HR');

-- 7. Age is 25, 28, or 30:

SELECT * FROM Employees1
WHERE Age IN (25, 28, 30);

SELECT * FROM Employees1 ORDER BY name ASC;