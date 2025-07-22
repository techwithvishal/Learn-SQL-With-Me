CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    course VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO students (name, age, course, marks, city) VALUES
('Rahul Sharma', 20, 'BCA', 78, 'Delhi'),
('Anjali Verma', 21, 'MCA', 85, 'Lucknow'),
('Vikram Singh', 22, 'B.Tech', 65, 'Noida'),
('Pooja Mishra', 19, 'BCA', 90, 'Meerut'),
('Amit Kumar', 23, 'MCA', 55, 'Ghaziabad');

SELECT * FROM students;

-- YE RAHI APKI UPDATE COMMAND ISKA QUESTION YE THA KI QUESTION)
-- Q1. Increase marks by 5 for all students of course 'BCA'.

UPDATE students
SET marks = marks+5
WHERE course = 'BCA';

-- YE DATA KO SEQUENCE M KARNE K LIYE COMMAND H THAT MEANS JO UPDATE KARTE HUM VO TABLE M SABSE NICHE CHALA JATA H TO USSE ORDER M KARNE K LIYE ORDER BY COMMAND USE KARTE H BETA 
SELECT * FROM students ORDER BY student_id ASC;

-- Q2. Change city to 'Kanpur' for student named 'Amit Kumar'.

UPDATE students
SET city='kanpur'
WHERE name='Amit Kumar';

-- Q3. Set age = 25 for all students who have marks less than 60.

UPDATE students
SET age=25
WHERE  marks<60;

-- Q4. Change course to 'MBA' for student with student_id = 2.

UPDATE students
SET course ='MBA'
WHERE student_id=2;

-- Q5. Reduce 10 marks for students who are from 'Delhi' or 'Meerut'.

UPDATE students
SET marks = marks - 10
where city IN('Delhi','Meerut');

-- Q6. Change name to 'Anjali Kapoor' for the student currently named 'Anjali Verma'

UPDATE students
SET name='Anjali kapoor'
WHERE name='Anjali Verma';

 -- Q7. Set city = 'Greater Noida' and course = 'M.Tech' for student with marks = 65.

 UPDATE students
 SET city='Greater Noida', course='M.Tech'
 WHERE marks=65;

 SELECT * FROM students ORDER BY student_id ASC;