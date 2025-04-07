select a.first_name, a.last_name
from actor a 
where not exists (
select 1
from film_actor fa 
join film f 
on fa.film_id = f.film_id 
join film_category fc 
on f.film_id = fc.film_id 
join category c 
on fc.category_id = c.category_id 
where c."name" = 'Music' and fa.actor_id = a.actor_id )
order by a.last_name, a.first_name;