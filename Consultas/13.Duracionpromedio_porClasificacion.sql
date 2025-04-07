select f.rating , AVG (f.length ) as PROMEDIO_DURACION
from film f 
group by f.rating ;