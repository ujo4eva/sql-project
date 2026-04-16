-- =============================================
-- SIWES II - Database Application Programming in Java
-- Script 01: Create Database
-- Author: 
-- Date: 16-04-2026
-- =============================================

-- Create the main database for our SIWES project
-- Using utf8mb4 for proper Nigerian name/character support
CREATE DATABASE IF NOT EXISTS siwes_db 
    CHARACTER SET utf8mb4 
    COLLATE utf8mb4_unicode_ci;

-- Switch to the new database
USE siwes_db;

-- Confirm database was created
SHOW DATABASES LIKE 'siwes_db';
