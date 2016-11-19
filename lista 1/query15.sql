select *
from
(
select * 
from customers
) as tab
where tab.CompanyName like 't%';