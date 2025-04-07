select AVG(p.amount) as Average_payment, STDDEV(p.amount) as standard_deviation, variance(p.amount) as variance
from payment p;