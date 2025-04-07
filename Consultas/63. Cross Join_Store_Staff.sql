select s.store_id, s.address_id, s2.staff_id, s2. first_name , s2.last_name
from store s 
cross join staff s2 ;