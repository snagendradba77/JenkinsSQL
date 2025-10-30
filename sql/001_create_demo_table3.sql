-- Create the database if it doesn't exist
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'DemoDB')
BEGIN
    CREATE DATABASE DemoDB;
    PRINT 'Database DemoDB created successfully.';
END
ELSE
BEGIN
    PRINT 'Database DemoDB already exists.';
END
GO

-- Switch to the database
USE DemoDB;
GO

-- Create a sample table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Employees7')
BEGIN
    CREATE TABLE Employees7 (
        EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
        FirstName NVARCHAR(50) NOT NULL,
        LastName NVARCHAR(50) NOT NULL,
        Email NVARCHAR(100) UNIQUE,
        HireDate DATE DEFAULT GETDATE()
    );
    PRINT 'Table Employees7 created successfully.';
END
ELSE
BEGIN
    PRINT 'Table Employees7 already exists.';
END
GO

