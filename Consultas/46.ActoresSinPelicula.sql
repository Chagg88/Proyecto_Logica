select a.actor_id, a.first_name , a.last_name
from actor a 
left join film_actor fa 
on a.actor_id = fa.actor_id
where fa.actor_id is null ;