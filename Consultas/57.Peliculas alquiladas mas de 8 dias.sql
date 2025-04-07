select f.title
from film f 
join inventory i 
on f.film_id = i.film_id
join rental r 
on i.inventory_id = r.inventory_id
where r.return_date - r.rental_date > interval '8 days';