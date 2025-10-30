-- 01_create_database.sql
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'DemoDB')
BEGIN
    PRINT 'Creating DemoDB...';
    CREATE DATABASE DemoDB;
END
ELSE
BEGIN
    PRINT 'Database DemoDB already exists.';
END
GO

