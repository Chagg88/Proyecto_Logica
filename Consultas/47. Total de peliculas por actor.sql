select a.first_name, a.last_name, count(fa.film_id) as numero_peliculas
from actor a 
left join film_actor fa 
on a.actor_id = fa.actor_id
group by a.actor_id, a.first_name, a.last_name
order by numero_peliculas desc , a.last_name, a.first_name