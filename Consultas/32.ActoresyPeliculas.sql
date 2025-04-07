select a.actor_id , a.first_name , a.last_name , f.title
from actor a 
left join film_actor fa 
on a.actor_id = fa.actor_id
left join film f 
on fa.film_id = f.film_id
order by a.actor_id, a.last_name, a.first_name, f.title;