select f.title, COUNT(i.inventory_id ) as cantidad_disponible
from film f 
left join inventory i 
on f.film_id = i.film_id
group by f.film_id, f.title
order by f.title;