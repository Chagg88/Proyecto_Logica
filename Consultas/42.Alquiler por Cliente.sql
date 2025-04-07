select r.rental_id , r.rental_date , r.return_date, c. customer_id, c.first_name, c. last_name 
from rental r
join customer c 
on r.customer_id = c.customer_id
order by r.rental_date desc;