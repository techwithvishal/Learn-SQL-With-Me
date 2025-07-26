SELECT * FROM employee;

-- Comparision operator ka assignment table humne employeee wali hi use ki h pichli jo import ki thi csv file se 

-- 1. List all employees whose salary is equal to 50000.

SELECT * FROM employee
WHERE salary = 50000;


-- 2. Find employees whose age is greater than 30.

SELECT * FROM employee
WHERE age > 30;




-- 3. Get names of employees whose salary is not equal to 60000.

SELECT first_name FROM employee
WHERE salary != 60000;
-- (You can also use <> instead of != for not equal)


-- 4. Display employees from 'IT' department.

SELECT * FROM employee
WHERE department = 'IT';

-- 5. Find employees who last_name is Ramos

SELECT * FROM employee
WHERE last_name = 'Ramos';


-- 6. List employees who have age greater than or equal to 40.

SELECT * FROM employee
WHERE age >= 40;



-- 7. Find employees whose department is not 'HR'.

SELECT * FROM employee
WHERE department != 'HR';


-- 8. Show employee records where salary is more than 30000 but less than 60000.

SELECT * FROM employee
WHERE salary > 30000 AND salary < 60000;
