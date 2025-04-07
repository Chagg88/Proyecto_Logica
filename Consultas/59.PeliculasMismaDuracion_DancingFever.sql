select f.title
from film f 
where f.length = (select f2.length 
from film f2 
where f2.title ilike 'Dancing Fever')
order by f.title 