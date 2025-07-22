CREATE TABLE employee2(
employee_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
postion VARCHAR(40),
department VARCHAR(60),
hire_date DATE,
salary NUMERIC(10,2)

);
ALTER TABLE employee2
RENAME postion TO position;

SELECT * FROM employee2;
INSERT INTO employee2 (employee_id, name, position, department, hire_date, salary) VALUES
(101, 'Vishal Singh', 'Software Engineer', 'IT', DATE '2022-05-10', 55000.00),
(102, 'Avnish Kaushik', 'System Analyst', 'IT', DATE '2021-11-20', 60000.00),
(103, 'Priya Sharma', 'HR Executive', 'Human Resources', DATE '2023-01-15', 45000.00),
(104, 'Sumit Verma', 'Project Manager', 'Operations', DATE '2020-09-01', 75000.00),
(105, 'Ankita Jain', 'Database Admin', 'IT', DATE '2022-03-30', 58000.00),
(106, 'Neha Singh', 'UI/UX Designer', 'Design', DATE '2023-06-10', 52000.00);

