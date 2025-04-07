select to_char(r.rental_date , 'YYYY-MM') as rental_month,
COUNT (*) as number_of_rentals
from rental r 
group by rental_month 
order by rental_month;