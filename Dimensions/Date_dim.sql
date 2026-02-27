CREATE TABLE Date_dim (
    date_key INT PRIMARY KEY,      -- YYYYMMDD
    full_date DATE,
    day INT,
    month INT,
    month_name VARCHAR(20),
    quarter INT,
    year INT,
    weekday INT,
    weekday_name VARCHAR(20),
    is_weekend BIT
);