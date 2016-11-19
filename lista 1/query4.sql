select region, count(region)
from suppliers 
where region <> ' ' 
group by region;