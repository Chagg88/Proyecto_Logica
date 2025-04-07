select a.first_name , a.last_name 
from actor a 
join film_actor fa 
on A.actor_id = FA.actor_id
join film f 
on FA.film_id = F.film_id
where f.title ilike 'Egg Igby';