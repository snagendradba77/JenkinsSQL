-- Switch to the database
USE DemoDB;
GO

-- Create a sample table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Employees1')
BEGIN
    CREATE TABLE Employees1 (
        EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
        FirstName NVARCHAR(50) NOT NULL,
        LastName NVARCHAR(50) NOT NULL,
        Email NVARCHAR(100) UNIQUE,
        HireDate DATE DEFAULT GETDATE()
    );
    PRINT 'Table Employees1 created successfully.';
END
ELSE
BEGIN
    PRINT 'Table Employees1 already exists.';
END
GO

