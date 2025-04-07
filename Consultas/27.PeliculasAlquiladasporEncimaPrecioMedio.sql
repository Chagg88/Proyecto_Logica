select f.title , f.rental_rate 
from film f 
where f.rental_rate > (
select AVG(f.rental_rate)
from film f);