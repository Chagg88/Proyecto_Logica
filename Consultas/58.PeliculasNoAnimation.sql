select distinct f.title
from film f 
join film_category fc 
on f.film_id = fc.film_id
join category c 
on fc.category_id = c.category_id
where c."name" in (select c2."name"
from category c2 
where c2."name" = 'Animation'
)
order by f.title;