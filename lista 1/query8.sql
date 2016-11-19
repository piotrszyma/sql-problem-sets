SELECT customers.ContactName, MIN(orders.OrderDate)
from customers left join orders
on customers.CustomerID = orders.CustomerID
group by ContactName