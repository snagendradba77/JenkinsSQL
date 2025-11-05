CREATE TABLE flywaydemo_table2 (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100),
    created_at DATETIME DEFAULT GETDATE()
);
