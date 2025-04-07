select f.title , f.length 
from film f 
where f.length > (
select
AVG(f.length) 
from film f);