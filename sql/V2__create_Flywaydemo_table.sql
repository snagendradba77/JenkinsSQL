CREATE TABLE flywaydemo_table (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100),
    created_at DATETIME DEFAULT GETDATE()
);

