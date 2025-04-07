select fa.actor_id 
from film_actor fa 
group by fa.actor_id 
having count (*) > 40;