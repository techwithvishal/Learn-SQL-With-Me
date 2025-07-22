CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,         -- Auto-increment unique ID
    first_name VARCHAR(50),                 -- First name of employee
    last_name VARCHAR(50),                  -- Last name
    email VARCHAR(100) UNIQUE,              -- Email should be unique
    department VARCHAR(50),                 -- Department name
    salary NUMERIC(10, 2),                  -- Salary with decimal (example: 50000.75)
    joining_date DATE,                      -- Joining date
    age INTEGER                             -- Age
);

-- ye table humne csv file s import ki h puri import/export option s

SELECT * FROM employee;

SELECT first_name, salary, (salary * 0.10) AS Bonus FROM employee;

-- ye upr airthmetic op multiplication ka example tha
