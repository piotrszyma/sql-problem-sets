select * 
from shippers, suppliers
where shippers.CompanyName like 's%' and suppliers.CompanyName like 's%'; /* and lub or? */