select c."name", SUM(f.length) as duracion_total_action
from category c
join film_category fc 
on c.category_id = fc.category_id
join film f 
on fc.film_id = f.film_id
where c."name" = 'Action'
group by c."name";