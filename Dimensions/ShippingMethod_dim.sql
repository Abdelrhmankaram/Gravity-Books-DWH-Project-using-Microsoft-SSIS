select ROW_NUMBER() OVER (ORDER BY method_id) AS method_key, *
from shipping_method