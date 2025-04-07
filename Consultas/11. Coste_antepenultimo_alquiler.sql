select p.amount, R.rental_date 
from
(
select r.rental_id , r.rental_date 
from rental r 
order by r.rental_date ASC
limit 1 offset (
select COUNT(*)-3 from rental r2 )
) as R
join payment p 
on P.rental_id = p.rental_id;
