CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    email VARCHAR(100),
    admission_date DATE
);

-- Sample Data Insert

INSERT INTO students (full_name, age, email, admission_date) VALUES
('Rohit Sharma', 21, 'rohit@gmail.com', '2022-07-01'),
('Priya Mehra', 22, 'priya@gmail.com', '2023-01-15'),
('Ankit Singh', 20, 'ankit@gmail.com', '2024-03-20'),
('Neha Kapoor', 23, 'neha@gmail.com', '2021-09-10');*

SELECT * FROM students;

-- Q1. Column age ka data type INT se VARCHAR(3) me badlo.

ALTER TABLE students
ALTER COLUMN age TYPE VARCHAR(3);

-- ✏️ Q2. Column email ka naam badal kar contact_email karo.

ALTER TABLE students
RENAME COLUMN email TO contact_email;

-- 📅 Q3. Column admission_date ko TEXT data type me convert karo.

ALTER TABLE students
ALTER COLUMN admission_date TYPE TEXT;

-- Q4. Naya column city (type VARCHAR(50)) add karo.

ALTER TABLE students
ADD COLUMN city VARCHAR(40);

--  Q5. Column city ko table se hatao.

ALTER TABLE students
DROP COLUMN city;

-- Column full_name ka size badha kar VARCHAR(150) karo.

ALTER TABLE students
ALTER COLUMN full_name TYPE VARCHAR(150);

--  Q7. Column full_name ka naam badal kar student_name karo aur uska type bhi TEXT kar do.

ALTER TABLE students
RENAME COLUMN full_name TO student_name;

ALTER TABLE students
ALTER COLUMN student_name TYPE TEXT;

