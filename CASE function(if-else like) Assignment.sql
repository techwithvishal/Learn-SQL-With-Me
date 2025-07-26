CREATE TABLE Employees3 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(30),
    Salary INT,
    DOJ DATE
);

INSERT INTO Employees3 (EmpID, Name, Age, Department, Salary, DOJ) VALUES
(1, 'Amit Sharma',   28, 'HR',      35000, '2021-01-10'),
(2, 'Sneha Singh',   32, 'IT',      55000, '2020-08-15'),
(3, 'Raj Mehta',     25, 'Sales',   25000, '2022-03-20'),
(4, 'Shreya Jain',   29, 'IT',      60000, '2019-11-01'),
(5, 'Arjun Rao',     31, 'Finance', 48000, '2023-02-01'),
(6, 'Sanya Kapoor',  27, 'HR',      37000, '2021-06-12'),
(7, 'Rohit Kumar',   26, 'IT',      52000, '2023-01-01'),
(8, 'Anjali Verma',  30, 'Sales',   46000, '2020-05-30');

-- syntax:

-- SELECT column_name,
--   CASE
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     ...
--     ELSE default_result
--   END AS alias_name
-- FROM table_name;


/*Assignment*/

-- 📘 CASE FUNCTION – Assignment Questions (with Conditions)

-- 🧩 Based on Salary

-- Q1. Create a new column Salary_Grade such that:
-- If Salary < 30000 → show "Low"
-- If Salary between 30000 and 50000 → show "Medium"
-- -- If Salary > 50000 → show "High"

SELECT Name, Salary,
  CASE
    WHEN Salary < 30000 THEN 'Low'
    WHEN Salary BETWEEN 30000 AND 50000 THEN 'Medium'
    WHEN Salary > 50000 THEN 'High'
  END AS Salary_Grade
FROM Employees3;

🧩 Based on Date of Joining (DOJ)

Q2. Create a new column Experience_Level such that:
If DOJ < '2020-01-01' → "Senior"
If DOJ between '2020-01-01' and '2022-12-31' → "Mid"
If DOJ > '2023-01-01' → "Junior"

SELECT Name, DOJ,
  CASE
    WHEN DOJ < '2020-01-01' THEN 'Senior'
    WHEN DOJ BETWEEN '2020-01-01' AND '2022-12-31' THEN 'Mid'
    WHEN DOJ > '2023-01-01' THEN 'Junior'
    ELSE 'Unclassified'
  END AS Experience_Level
FROM Employees3;

🧩 Based on Department Name

Q3. Create a column Custom_Department where:
'HR' → "People Team"
'IT' → "Tech Department"
'Finance' → "Money Team"
Any other → "Other Team"

SELECT Name, Department,
  CASE Department
    WHEN 'HR' THEN 'People Team'
    WHEN 'IT' THEN 'Tech Department'
    WHEN 'Finance' THEN 'Money Team'
    ELSE 'Other Team'
  END AS Custom_Department
FROM Employees3;

🧩 Based on Age

Q4. Create a column Age_Category:
Age ≤ 26 → "Young"
Age between 27–30 → "Adult"
Age > 30 → "Experienced"

SELECT Name, Age,
  CASE
    WHEN Age <= 26 THEN 'Young'
    WHEN Age BETWEEN 27 AND 30 THEN 'Adult'
    WHEN Age > 30 THEN 'Experienced'
  END AS Age_Category
FROM Employees3;

--  Bonus Question (Complex Logic)
 
-- Q6. Create a column Bonus_Status:
-- If Salary > 55000 AND Department is 'IT' → "Eligible for Bonus"
-- Else → "Not Eligible"

SELECT Name, Department, Salary,
  CASE
    WHEN Salary > 55000 AND Department = 'IT' THEN 'Eligible for Bonus'
    ELSE 'Not Eligible'
  END AS Bonus_Status
FROM Employees3;

SELECT * FROM Employees3 ORDER BY name ASC;