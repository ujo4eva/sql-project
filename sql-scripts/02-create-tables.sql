-- =============================================
-- SIWES II - Database Application Programming in Java
-- Script 02: Create Tables with Proper Constraints
-- Matches MySQL Courseware (Pages 4-10)
-- =============================================

USE siwes_db;

-- Drop tables if they exist (for re-running the script safely)
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS students;

-- =============================================
-- Table 1: students
-- =============================================
CREATE TABLE IF NOT EXISTS students (
    student_id          INT AUTO_INCREMENT PRIMARY KEY,
    first_name          VARCHAR(100) NOT NULL,
    last_name           VARCHAR(100) NOT NULL,
    matric_number       VARCHAR(20) UNIQUE NOT NULL,
    department          VARCHAR(100) NOT NULL,
    level               ENUM('100', '200', '300', '400', '500') NOT NULL,
    email               VARCHAR(150) UNIQUE,
    date_of_birth       DATE,
    enrollment_date     DATE DEFAULT CURRENT_DATE,
    is_active           BOOLEAN DEFAULT TRUE,
    
    -- Courseware constraints demonstrated
    INDEX idx_department (department),           -- For faster searches
    INDEX idx_level (level)
) ENGINE=InnoDB;

-- =============================================
-- Table 2: payments (to demonstrate relationships)
-- =============================================
CREATE TABLE IF NOT EXISTS payments (
    payment_id          INT AUTO_INCREMENT PRIMARY KEY,
    student_id          INT NOT NULL,
    payment_date        DATE NOT NULL,
    amount              DECIMAL(10,2) NOT NULL,
    teller_no           VARCHAR(50) UNIQUE,
    payment_type        ENUM('School Fees', 'Departmental', 'Hostel', 'Other') NOT NULL,
    
    FOREIGN KEY (student_id) REFERENCES students(student_id)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Show the structure of both tables (as taught in courseware)
DESCRIBE students;
DESCRIBE payments;

-- List all tables in our database
SHOW TABLES;
