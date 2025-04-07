select c."name", COUNT(f.film_id) as numero_peliculas
from category c 
join film_category fc 
on c.category_id = fc.category_id
join film f 
on fc.film_id = f.film_id
where f.release_year = '2006'
group by c."name"
order by numero_peliculas desc: