CREATE TABLE Address_dim (
    [address_key] bigint IDENTITY(1,1) PRIMARY KEY, 
    
    [address_id] int NOT NULL, 
    
    [city] varchar(100),
    [street_name] varchar(200),
    [street_number] varchar(10),
    [country_name] varchar(200),
    [address_status] varchar(30),
    
    [effective_start_date] DATETIME NOT NULL DEFAULT SYSUTCDATETIME(),
    [effective_end_date] DATETIME NULL,
    [is_active] bit NOT NULL DEFAULT 1,
);