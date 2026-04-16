-- =============================================
-- SIWES II - Database Application Programming in Java
-- Script 04: Basic & Advanced Queries
-- Covers Courseware Pages 9-22 (SELECT, WHERE, LIKE, GROUP BY, JOINs, etc.)
-- =============================================

USE siwes_db;

-- 1. Simple SELECT (all columns)
SELECT * FROM students;

-- 2. SELECT specific columns with alias (Courseware page 9)
SELECT 
    first_name AS FirstName,
    last_name AS LastName,
    matric_number AS MatricNo,
    department AS Dept,
    level
FROM students;

-- 3. WHERE clause with operators (Courseware page 16)
SELECT * FROM students 
WHERE department = 'Computer Engineering' 
  AND level = '300';

-- 4. LIKE operator (Courseware page 19)
SELECT * FROM students 
WHERE email LIKE '%@stu.fuoye.edu.ng';

-- 5. IN operator (Courseware page 17)
SELECT * FROM payments 
WHERE payment_type IN ('School Fees', 'Hostel');

-- 6. BETWEEN + AND (Courseware page 18)
SELECT * FROM payments 
WHERE amount BETWEEN 50000 AND 100000 
  AND payment_date >= '2025-04-01';

-- 7. GROUP BY + Aggregate Functions (Courseware pages 20-22)
SELECT 
    department,
    COUNT(*) AS Total_Students,
    AVG(level) AS Avg_Level
FROM students 
GROUP BY department;

SELECT 
    payment_type,
    COUNT(*) AS Payment_Count,
    SUM(amount) AS Total_Amount,
    AVG(amount) AS Average_Amount
FROM payments 
GROUP BY payment_type;

-- 8. INNER JOIN (Courseware page 25 - Multi-table querying)
SELECT 
    s.first_name,
    s.last_name,
    s.matric_number,
    s.department,
    p.payment_date,
    p.amount,
    p.payment_type
FROM students s
INNER JOIN payments p ON s.student_id = p.student_id
ORDER BY p.payment_date DESC;

-- 9. LEFT JOIN (to see students who have not paid anything yet)
SELECT 
    s.first_name,
    s.last_name,
    s.matric_number,
    p.amount
FROM students s
LEFT JOIN payments p ON s.student_id = p.student_id
WHERE p.amount IS NULL;   -- Students with no payments

-- Confirm everything ran successfully
SELECT 'All queries executed successfully!' AS status;
