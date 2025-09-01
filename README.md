## Next-gen-software
# Student Management System (SQL Project)

This is a simple **SQL project for beginners** that demonstrates basic database design, SQL queries, and table relationships using a **Student Management System**.

---

## 📁 Project Structure
- `student_management.sql` – SQL script to create tables, insert data, and run queries

---

## 📌 Features Covered
- Creating tables with primary and foreign keys
- Inserting sample data
- Performing basic SELECT, UPDATE, DELETE operations
- Using JOINs to combine data across tables
- Aggregation functions like COUNT and AVG

---

## 📊 Tables
### 1. Students
| Column      | Type         |
|-------------|--------------|
| student_id  | INT (PK)     | 
| name        | VARCHAR(100) |
| age         | INT          |
| gender      | VARCHAR(10)  |

### 2. Courses
| Column      | Type         |
|-------------|--------------|
| course_id   | INT (PK)     |
| course_name | VARCHAR(100) |
| instructor  | VARCHAR(100) |

### 3. Enrollments
| Column        | Type         |
|---------------|--------------|
| enrollment_id | INT (PK)     |
| student_id    | INT (FK)     |
| course_id     | INT (FK)     |
| enroll_date   | DATE         |

---

## 🧪 Sample Queries
- List all students
- List all courses
- List all enrollments
- Find students enrolled in a specific course
- Count number of students in each course
- Find average age of students
- Update a student's name
- Delete a course

---

