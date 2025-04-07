select r.rental_date , COUNT(*) as number_of_rentals
from rental r 
group by r.rental_date 
order by number_of_rentals desc;