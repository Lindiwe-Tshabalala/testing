CREATE TABLE [User] (
    [id] INTEGER identity(1,1) PRIMARY KEY,
    [username] VARCHAR(50) NOT NULL,
    [email] VARCHAR(100) NOT NULL
)