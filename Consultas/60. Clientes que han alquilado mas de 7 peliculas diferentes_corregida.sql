select c.first_name, c.last_name
from customer c 
join rental r 
on c.customer_id = r.customer_id
join inventory i
on r.inventory_id = i.inventory_id
join film f
on i.film_id = i.film_id = f.film_id
group by c.customer_id, c.first_name, c.last_name
having COUNT(DISTINCT f.film_id) >= 7
order by c.last_name, c.first_name;