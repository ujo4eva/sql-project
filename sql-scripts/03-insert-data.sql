-- =============================================
-- SIWES II - Database Application Programming in Java
-- Script 03: Insert Sample Data (Realistic Nigerian Student Records)
-- Matches Courseware Pages 8-9 (INSERT statement)
-- =============================================

USE siwes_db;

-- Insert sample students (Computer Engineering focus + other departments)
INSERT INTO students 
    (first_name, last_name, matric_number, department, level, email, date_of_birth, enrollment_date, is_active)
VALUES
    ('John', 'Nzewure', 'CE/2023/001', 'Computer Engineering', '300', 'john.nzewure@stu.fuoye.edu.ng', '2004-05-12', '2023-09-15', TRUE),
    ('Aisha', 'Mohammed', 'CE/2023/002', 'Computer Engineering', '300', 'aisha.mohammed@stu.fuoye.edu.ng', '2005-01-20', '2023-09-15', TRUE),
    ('Emeka', 'Okafor', 'EE/2022/045', 'Electrical Engineering', '400', 'emeka.okafor@stu.fuoye.edu.ng', '2003-11-08', '2022-09-10', TRUE),
    ('Fatima', 'Adebayo', 'CE/2023/015', 'Computer Engineering', '200', 'fatima.adebayo@stu.fuoye.edu.ng', '2006-03-25', '2023-09-15', TRUE),
    ('Chukwudi', 'Okonkwo', 'ME/2021/078', 'Mechanical Engineering', '500', 'chukwudi.okonkwo@stu.fuoye.edu.ng', '2002-07-14', '2021-09-20', TRUE);

--
