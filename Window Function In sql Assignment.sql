CREATE TABLE employee3 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employee3 (emp_id, emp_name, department, salary) VALUES
(1, 'Rahul', 'HR', 50000),
(2, 'Priya', 'IT', 70000),
(3, 'Aman', 'HR', 60000),
(4, 'Nisha', 'IT', 80000),
(5, 'Suresh', 'HR', 55000);

SELECT * FROM employee3;

-- Assignment

--  1. ROW_NUMBER() — Practice
-- Q1: Har department mein salary ke basis par employees ko descending order mein row number do.

SELECT emp_name, department, salary,
ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employee3;

--  2. RANK() — Practice
-- Q2: Sabhi employees ko salary ke basis par rank do. Equal salary wale same rank paayein. Gap chhodo.

SELECT emp_name, salary,
RANK() OVER (ORDER BY salary DESC) AS rank
FROM employee3;

--  DENSE_RANK() — Practice
-- Q3: Same question jaise RANK, par rank ke beech gap mat chhodo.

SELECT emp_name, salary,
DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM employee3;

--   4. NTILE() — Practice
-- Q4: Employees ko salary ke basis par 2 groups mein divide karo.


SELECT emp_name, salary,
NTILE(2) OVER (ORDER BY salary DESC) AS salary_half
FROM employee3;

--  5. LAG() & LEAD() — Practice
-- Q5: Har employee ke salary ke sath usse pehle wale aur baad wale employee ki salary dikhayein.


SELECT emp_name, salary,
LAG(salary) OVER (ORDER BY emp_id) AS prev_salary,
LEAD(salary) OVER (ORDER BY emp_id) AS next_salary
FROM employee3;


-- 6. SUM() — Practice
-- Q6: Har employee ke sath uske department ka total salary bhi dikhao.


SELECT emp_name, department, salary,
SUM(salary) OVER (PARTITION BY department) AS dept_total_salary
FROM employee3;

--  7. FIRST_VALUE() / LAST_VALUE() — Practice
-- Q7: Har department ke highest salary wale employee ka naam sab rows mein dikhao.


SELECT emp_name, department, salary,
FIRST_VALUE(emp_name) OVER (PARTITION BY department ORDER BY salary DESC) AS top_earner
FROM employee3;
