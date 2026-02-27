CREATE TABLE Customer_dim (
    Customer_key        INT IDENTITY(1,1) PRIMARY KEY,
    Customer_id         INT,
    
    first_name          VARCHAR(200),
    last_name           VARCHAR(200),
    email              VARCHAR(350),

    -- SCD Type 2 fields
    effective_start_date DATETIME2,
    effective_end_date   DATETIME2,
    is_active          BIT NOT NULL DEFAULT 1
);