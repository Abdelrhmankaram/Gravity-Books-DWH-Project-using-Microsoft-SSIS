select ROW_NUMBER() OVER (ORDER BY d.address_id) AS address_key,
	   d.address_id,
	   d.city,
	   d.street_name,
	   d.street_number,
	   c.country_name,
	   ds.address_status,
from address d
	 join country c on c.country_id = d.country_id	
	 join customer_address ca on ca.address_id = d.address_id
	 join address_status ds on ca.status_id = ds.status_id;