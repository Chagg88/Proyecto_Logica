create temp table cliente_rentas_temporal as
select c.customer_id, c.first_name, c.last_name
from customer c 
left join rental r 
on c.customer_id = r.customer_id
group by c.customer_id, c.first_name, c.last_name;