create view actor_num_peliculas as
select a.first_name, a.last_name, COUNT(fa.film_id) as numero_peliculas
from actor a 
left join film_actor fa 
on a.actor_id = fa.actor_id
group by a.actor_id, a.first_name, a.last_name;