-- Student Management System SQL Project

-- 1. Create Tables
CREATE TABLE Students ( 
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10)                                       
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor VARCHAR(100)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enroll_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- 2. Insert Sample Data
INSERT INTO Students VALUES (1, 'Alice', 20, 'Female');
INSERT INTO Students VALUES (2, 'Bob', 22, 'Male');
INSERT INTO Students VALUES (3, 'Charlie', 21, 'Male');

INSERT INTO Courses VALUES (101, 'Math', 'Dr. Smith');
INSERT INTO Courses VALUES (102, 'Physics', 'Dr. Johnson');
INSERT INTO Courses VALUES (103, 'Chemistry', 'Dr. Lee');

INSERT INTO Enrollments VALUES (1, 1, 101, '2025-06-01');
INSERT INTO Enrollments VALUES (2, 2, 101, '2025-06-02');
INSERT INTO Enrollments VALUES (3, 2, 102, '2025-06-02');
INSERT INTO Enrollments VALUES (4, 3, 103, '2025-06-03');

-- 3. Queries
-- List all students
SELECT * FROM Students;

-- List all courses
SELECT * FROM Courses;

-- List all enrollments
SELECT * FROM Enrollments;

-- Find students enrolled in a specific course (e.g., Math)
SELECT s.name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Math';

-- Count the number of students in each course
SELECT c.course_name, COUNT(e.student_id) AS student_count
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- Find average age of students
SELECT AVG(age) AS average_age FROM Students;

-- Update a student name
UPDATE Students SET name = 'Alicia' WHERE student_id = 1;

-- Delete a course
DELETE FROM Courses WHERE course_id = 103; 
