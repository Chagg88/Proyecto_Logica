select f.rating,
count (*) as total_peliculas
from film f 
group by f.rating 
order by total_peliculas desc;