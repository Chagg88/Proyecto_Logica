create temp table peliculas_alquiladas as
select f.film_id, f.title, count (r.rental_id) as numero_alquileres
from film f 
join inventory i 
on f.film_id = i.film_id
join rental r 
on i.inventory_id = r.inventory_id
group by f.film_id, f.title
having count(r.rental_id) >=10;