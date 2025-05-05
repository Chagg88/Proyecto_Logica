select f.title
from film f 
join inventory i 
on f.film_id = i.film_id
join rental r 
on i.inventory_id = r.inventory_id
join customer c 
on r.customer_id = c.customer_id
where c.first_name ilike 'Tammy' and c.last_name ilike 'Sanders' and r.return_date is null
order by f.title;