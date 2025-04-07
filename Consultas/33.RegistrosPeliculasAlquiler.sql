select f.film_id, f.title as movie_title, r.rental_id, r.rental_date, r.return_date, r.customer_id
from film f 
left join inventory i 
on f.film_id = i.film_id
left join rental r 
on i.inventory_id = r.inventory_id
order by f.title, r.rental_date;