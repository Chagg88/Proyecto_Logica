select a.first_name, count(*) as conteo_nombre
from actor a 
group by a.first_name 
order by conteo_nombre desc , a.first_name 