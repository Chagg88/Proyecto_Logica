select c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) as total_alquileres
from customer c 
left join rental r 
on c.customer_id = r.customer_id
group by c.customer_id, c.first_name, c.last_name
order by total_alquileres desc , c.last_name, c.first_name;
