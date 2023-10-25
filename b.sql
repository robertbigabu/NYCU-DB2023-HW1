select sum(num_parts) as T
from sets
where year between 1950 and 2017
group by year
order by T desc