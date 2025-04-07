select c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) as alquileres_totales
from customer c 
left join rental r 
on c.customer_id = r.customer_id
group by c.customer_id, c.first_name, c.last_name
order by alquileres_totales desc, c.last_name, c.first_name;