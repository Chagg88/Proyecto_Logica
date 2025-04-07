select c.customer_id, c.first_name , c.last_name, r.rental_id, r.rental_date, r.return_date
from customer c 
left join rental r 
on c.customer_id = r.customer_id
order by c.customer_id, r.rental_date desc;