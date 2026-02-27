create table Sales_fact(
	sales_key INT IDENTITY(1,1) PRIMARY KEY,
	date_key int,
	customer_key bigint,
	book_key bigint,
	shipping_method_key int,
	shipping_address_key bigint,
    status_key bigint,
	order_id int,
	quantity int,
	unit_price decimal(5, 2),
	sales_amount decimal(5, 2),
);