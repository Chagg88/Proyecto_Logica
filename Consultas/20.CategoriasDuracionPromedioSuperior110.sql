select c."name" as category_name, AVG(f.length) as average_duration
from category c 
join film_category fc 
on c.category_id = fc.category_id
join film f 
on fc.film_id = f.film_id
group by c."name"
having AVG(f.length) > 110;