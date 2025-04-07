select c.customer_id , c.first_name , c.last_name , SUM(p.amount) as total_spent
from customer c 
join payment p 
on c.customer_id = p.customer_id
group by c.customer_id, c.first_name, c.last_name
order by total_spent desc
limit 5;