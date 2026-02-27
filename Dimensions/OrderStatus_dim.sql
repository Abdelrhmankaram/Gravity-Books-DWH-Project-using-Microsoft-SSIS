select ROW_NUMBER() OVER (ORDER BY status_id) AS status_key,
       status_id,
       status_value
from order_status