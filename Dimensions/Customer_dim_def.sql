CREATE TABLE Customer_dim (
    [customer_key] bigint IDENTITY(1,1) PRIMARY KEY, 
    
    [customer_id] int NOT NULL,

    [first_name] varchar(200),
    [last_name] varchar(200),
    [email] varchar(350),
    
    [effective_start_date] DATETIME NOT NULL DEFAULT SYSUTCDATETIME(),
    [effective_end_date] DATETIME NULL,
    [is_active] bit NOT NULL DEFAULT 1,
);