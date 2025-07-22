CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	emp_name VARCHAR(40),
	salary INT,
	doj DATE,
	department VARCHAR(80)
);

INSERT INTO employees (emp_name, salary, doj, department)
VALUES('Amit Rawat', 45000, '2021-06-15','HR'),
('Sonal Jain', 52000, '2020-09-01', 'Finance'),
('Manish Kumar', 60000, '2019-11-20', 'IT'),
('Kriti Sharma', 48000, '2022-02-10', 'Marketing');

SELECT * FROM employees;

-- Assignment
-- 🔄 Q1. Column salary ka data type VARCHAR(10) me change karo.

ALTER TABLE employees
ALTER COLUMN salary TYPE VARCHAR(10);

-- Q2. Column doj ka naam badal kar joining_date rakho.

ALTER TABLE employees
RENAME COLUMN doj TO joining_date;


--  Q3. Ek naya column experience_years (type INT) add karo.

ALTER TABLE employees
ADD COLUMN experience_years INT;

-- Q4. Column department ko table se hatao.

ALTER TABLE employees
DROP COLUMN department;

--  Q5. Column emp_name ka size badal kar VARCHAR(150) karo.

ALTER TABLE employees
ALTER COLUMN emp_name TYPE VARCHAR(150);


--  Column experience_years ka default value 0 set karo.

ALTER TABLE employees
ALTER COLUMN experience_years SET DEFAULT 0;





