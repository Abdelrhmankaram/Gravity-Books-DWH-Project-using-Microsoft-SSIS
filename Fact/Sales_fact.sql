select c.order_date, c.customer_id, b.book_id, sm.method_id, o.order_id, o.price
from book b
join book_language lang on lang.language_id = b.language_id
join order_line o on o.book_id = b.book_id
join cust_order c on c.order_id = o.line_id
join shipping_method sm on sm.method_id = c.shipping_method_id;