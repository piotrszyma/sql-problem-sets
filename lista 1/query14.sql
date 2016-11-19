select distinct orders.CustomerID from orders where orders.CustomerID not in
(select orders.CustomerID from orders where orders.OrderDate = '1997-05-15 00:00:00' )