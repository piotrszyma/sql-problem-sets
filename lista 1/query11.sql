SELECT T1.TerritoryDescription, T2.TerritoryDescription 
from territories as T1, territories as T2
where T1.RegionID = T2.RegionID
and T1.TerritoryDescription > T2.TerritoryDescription
group by T1.TerritoryDescription, T2.TerritoryDescription;