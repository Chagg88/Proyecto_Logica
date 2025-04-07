select distinct 
a.actor_id, a.first_name, a.last_name 
from actor a 
join film_actor fa 
on a.actor_id = fa.actor_id
join film f 
on fa.film_id = f.film_id
join film_category fc 
on f.film_id = fc.film_id
join category c 
on fc.category_id = c.category_id
where c."name" = 'Action'
order by a.last_name, a.first_name;