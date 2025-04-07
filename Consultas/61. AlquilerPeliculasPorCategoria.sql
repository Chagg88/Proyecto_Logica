select c."name", COUNT(r.rental_id) as total_alquileres
from category c 
join film_category fc 
on c.category_id = fc.category_id
join film f
on fc.film_id = f.film_id
join inventory i 
on f.film_id = i.film_id
join rental r 
on i.inventory_id = r.inventory_id
group by c."name"
order by total_alquileres desc;