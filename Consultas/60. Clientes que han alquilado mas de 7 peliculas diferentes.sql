select c.first_name, c.last_name
from customer c 
join rental r 
on c.customer_id = r.customer_id
group by c.customer_id, c.first_name, c.last_name
having COUNT(distinct (select i.film_id
from inventory i 
where i.inventory_id = r.inventory_id))>=7
order by c.last_name, c.first_name;