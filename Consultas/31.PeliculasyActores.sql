select f.title, a.actor_id, a.first_name, a.last_name
from film f 
left join film_actor fa 
on f.film_id = fa.film_id
left join actor a 
on fa.actor_id = a.actor_id
order by f.title, a.last_name, a.first_name;