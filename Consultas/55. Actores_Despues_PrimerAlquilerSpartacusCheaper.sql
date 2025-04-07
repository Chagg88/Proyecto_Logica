with PrimeraRentaSpartacus as (
select MIN(r.rental_date) as primera_fecha_renta
from film f 
join inventory i 
on f.film_id = i.film_id
join rental r 
on i.inventory_id = r.inventory_id
where f.title ilike 'Spartacus Cheaper'
)

select distinct  a.first_name, a.last_name
from actor a 
join film_actor fa 
on a.actor_id = fa.actor_id
join film f 
on fa.film_id = f.film_id
join inventory i 
on f.film_id = i.film_id
join rental r 
on i.inventory_id = r.inventory_id
where r.rental_date > (select primera_fecha_renta
from PrimeraRentaSpartacus)
order by a.last_name, a.first_name;