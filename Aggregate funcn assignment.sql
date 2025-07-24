CREATE TABLE student2 (
  student_id INT,
  name VARCHAR(50),
  marks INT,
  subject VARCHAR(20)
);

INSERT INTO student2 VALUES 
(1, 'Amit', 75, 'Math'),
(2, 'Sunita', 89, 'English'),
(3, 'Raj', 90, 'Math'),
(4, 'Pooja', NULL, 'English'),
(5, 'Ramesh', 82, 'Math');

SELECT * FROM student2;

-- Assignment  

-- Q1. Show total marks of only Math students.


SELECT SUM(marks) AS total_math_marks
FROM student2
WHERE subject = 'Math';

-- ✅ Q2. Show average marks of students who scored more than 80.

SELECT AVG(marks) AS avg_marks_above_80
FROM student2
WHERE marks > 80;

-- ✅ Q3. Count number of students who have given marks (i.e. marks not NULL)

SELECT COUNT(marks) AS total_valid_students
FROM student2
WHERE marks IS NOT NULL;

-- ✅ Q4. Show maximum marks of students who belong to English subject.

SELECT MAX(marks) AS max_english_marks
FROM student2
WHERE subject = 'English';

-- ✅ Q5. Subject-wise total students (use GROUP BY)

SELECT subject, COUNT(*) AS total_students
FROM student2
GROUP BY subject;